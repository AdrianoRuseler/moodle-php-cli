# moodle-php-cli

## php:8.4-cli-trixie

```bash
docker pull php:8.4-cli-trixie
```


## Docker HUB

- https://hub.docker.com/r/ruseler/moodle-php-cli

```bash
docker build -t ruseler/moodle-php-cli:latest .
```


## Composer

```bash
docker exec -it <container_name> composer --version
```

```bash
docker exec -it -u www-data moodle-cron composer install --no-dev --classmap-authoritative
```

## Initialize Moodle database for manual testing

```bash
docker exec -it -u www-data moodle-cron php admin/cli/install_database.php --agree-license --fullname="Docker moodle" --shortname="docker_moodle" --summary="Docker moodle site" --adminpass="M@0dl3ing" --adminemail="admin@example.com"
```

## Moodle CLI

docker pull php:8.4-cli-alpine
docker pull php:8.4-cli-trixie


```bash
docker exec -it -u www-data moodle-cron composer install --no-dev --classmap-authoritative
```

```bash
docker exec -it -u www-data moodle-cron php admin/cli/cron.php
```

```bash
docker exec -it -u www-data moodle-cron php admin/cli/checks.php
```
- Enter Maintenance Mode
```bash
docker exec -it -u www-data moodle-cron php admin/cli/maintenance.php --enable
```
- Running Database Upgrade
```bash
docker exec -it -u www-data moodle-app php admin/cli/upgrade.php --non-interactive
```

- Clearing Caches
```bash
docker exec -it -u www-data moodle-app php admin/cli/purge_caches.php
```
- Disable Maintenance Mode
```bash
docker exec -it -u www-data moodle-app php admin/cli/maintenance.php --disable
```


## OPCACHE

```bash
docker exec -it -u www-data moodle-cron php -i | grep opcache.enable_cli
```

```bash
docker exec -it -u www-data moodle-cron php --ri "Zend OPcache"
```

I noticed apcu and memcached are also in your list.
Since you are already using Redis, you generally don't need Memcached.
APCu is excellent for Moodle's "Local Cache" (MUC).

```bash
docker exec -u www-data moodle-cron php --ri apcu  
```

```bash
docker exec -u www-data moodle-cron php --ri redis
```


sudo -u www-data /usr/bin/php admin/cli/install.php --lang=CODE

```bash
docker exec -it -u www-data moodle-cron php admin/cli/install.php --lang=pt_br
```

```bash
docker exec -it -u www-data moodle-cron php admin/cli/scheduled_task.php --list
```

```bash
docker exec -it -u www-data moodle-cron php admin/cli/scheduled_task.php --execute=\core\task\h5p_get_content_types_task
```


php admin/cli/fix_course_sequence.php -c=* --fix


docker exec -it moodle-cron locale -a