FROM php:8.3-cli-trixie

# So we can use it anywhere for conditional stuff. Keeping BC with old (non-buildkit, builders)
ARG TARGETPLATFORM
ENV TARGETPLATFORM=${TARGETPLATFORM:-linux/amd64}
RUN echo "Building for ${TARGETPLATFORM}"

# Install some packages that are useful within the images.
RUN apt-get update && apt-get install -y \
    rsync git bc default-mysql-client-core locales wget \
&& rm -rf /var/lib/apt/lists/*

# 1. Set an environment variable for easier updates
ENV TZ=America/Sao_Paulo

# 2. Configure the OS timezone
# We use 'noninteractive' to prevent tzdata from prompting for input
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 3. Configure PHP's timezone
# This creates a custom .ini file to override the default setting
RUN echo "date.timezone = $TZ" > /usr/local/etc/php/conf.d/docker-php-ext-timezone.ini

# Verify the settings
RUN php -r "echo 'PHP Timezone: ' . date_default_timezone_get() . PHP_EOL;"

# 2. Configure and generate locales
RUN sed -i -e 's/# en_AU.UTF-8 UTF-8/en_AU.UTF-8 UTF-8/' /etc/locale.gen && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    sed -i -e 's/# pt_BR.UTF-8 UTF-8/pt_BR.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen

# 3. Set environment variables so PHP/Moodle recognize the locale
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# Setup the required extensions.
ADD root/tmp/setup/php-extensions.sh /tmp/setup/php-extensions.sh
RUN /tmp/setup/php-extensions.sh

# Copy the Composer binary from the official Composer image
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create directory and extract Moosh
RUN mkdir -p /opt/moosh \
    && curl -L "https://github.com/tmuras/moosh/archive/master.tar.gz" | tar xz --strip-components=1 -C /opt/moosh/

# Install dependencies
# Note: --ignore-platform-reqs is often necessary for PHP 8.4 
# until all upstream Moosh dependencies are updated.
ENV COMPOSER_ROOT_VERSION=master
RUN composer install \
    --no-interaction \
    --no-cache \
    --working-dir=/opt/moosh \
    --prefer-dist \
    --ignore-platform-reqs

# Make moosh executable and link it
RUN chmod +x /opt/moosh/moosh.php \
    && ln -s /opt/moosh/moosh.php /usr/local/bin/moosh
    
RUN mkdir /var/www/moodledata && chown www-data /var/www/moodledata && \
    mkdir /var/www/phpunitdata && chown www-data /var/www/phpunitdata && \
    mkdir /var/www/behatdata && chown www-data /var/www/behatdata && \
    mkdir /var/www/behatfaildumps && chown www-data /var/www/behatfaildumps && \
    mkdir /var/www/.npm && chown www-data /var/www/.npm && \
    mkdir /var/www/.nvm && chown www-data /var/www/.nvm

ADD root/usr /usr
ADD root/etc /etc

# Fix the original permissions of /tmp, the PHP default upload tmp dir.
RUN chmod 777 /tmp && chmod +t /tmp

# Keep our image size down..
RUN apt-get autoremove -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /var/www/html

# CMD ["apache2-foreground"]
ENTRYPOINT ["moodle-docker-php-entrypoint"]
