## Admin settings
- https://moodledev.io/docs/5.1/apis/subsystems/admin

Displays the current value of the given site setting. Allows to set it to the given value, too.

```bash
Usage:
    # php cfg.php [--component=<componentname>] [--json] [--shell-arg]
    # php cfg.php --name=<configname> [--component=<componentname>] [--shell-arg] [--no-eol]
    # php cfg.php --name=<configname> [--component=<componentname>] --set=<value>
    # php cfg.php --name=<configname> [--component=<componentname>] --unset
    # php cfg.php [--help|-h]

Options:
    -h --help                   Print this help.
    --component=<frankenstyle>  Name of the component the variable is part of. Defaults to core.
    --name=<configname>         Name of the configuration variable to get/set. If missing, print all
                                configuration variables of the given component.
    --set=<value>               Set the given variable to this value.
    --unset                     Unset the given variable.
    --shell-arg                 Escape output values so that they can be directly used as shell script arguments.
    --json                      Encode output list of values using JSON notation.
    --no-eol                    Do not include the trailing new line character when printing the value.

The list of all variables of the given component can be printed as
tab-separated list (default) or JSON object (--json). Particular values are
printed as raw text values, optionally escaped so that they can be directly
used as shell script arguments (--shell-arg). Single values are displayed with
trailing new line by default, unless explicitly disabled (--no-eol).

In the read mode, the script exits with success status 0 if the requested value
is found. If the requested variable is not set, the script exits with status 3.
When listing all variables of the component, the exit status is always 0 even
if no variables for the given component are found. When setting/unsetting a
value, the exit status is 0. When attempting to set/unset a value that has
already been hard-set in config.php, the script exits with error status 4. In
case of unexpected error, the script exits with error status 1.

Examples:

    # php cfg.php
        Prints tab-separated list of all core configuration variables and their values.

    # php cfg.php --json
        Prints list of all core configuration variables and their values as a JSON object.

    # php cfg.php --name=release
        Prints the given configuration variable - e.g. $CFG->release in this case.

    # php cfg.php --component=tool_recyclebin
    #   Prints tab-separated list of the plugin's configuration variables.

    # export DATAROOT=$(php cfg.php --name=dataroot --shell-arg --no-eol)
        Stores the given configuration variable in the shell variable, escaped
        so that it can be safely used as a shell argument.

    # php cfg.php --name=theme --set=classic
        Sets the given configuration variable to the given value.

    # php cfg.php --name=noemailever --unset
        Unsets the previously configured variable.
```


```bash
auth    email
enrol_plugins_enabled   manual,guest,self,cohort
theme   boost
filter_multilang_converted      1
siteidentifier  7eYsZKjaEJLQdyhkkZ3fDAoflY1Q3nyxlocalhost
backup_version  2008111700
backup_release  2.0 dev
mnet_dispatcher_mode    off
sessiontimeout  28800
stringfilters
texteditors     tiny,textarea
antiviruses
media_plugins_sortorder videojs,youtube
upgrade_extracreditweightsstepignored   1
upgrade_calculatedgradeitemsignored     1
upgrade_letterboundarycourses   1
format_plugins_sortorder        topics,weeks,singleactivity,social
mnet_localhost_id       1
mnet_all_hosts_id       2
siteguest       1
siteadmins      2
gdversion       2
licenses        unknown,allrightsreserved,public,cc-4.0,cc-nc-4.0,cc-nd-4.0,cc-nc-nd-4.0,cc-nc-sa-4.0,cc-sa-4.0
sitedefaultlicense      unknown
version 2025100603
enableuserfeedback      0
userfeedback_nextreminder       1
userfeedback_remindafter        90
enableoutcomes  0
usecomments     1
usetags 1
enablenotes     1
enableportfolios        0
enablewebservices       0
enablestats     0
enablerssfeeds  0
enableblogs     1
enablecompletion        1
enableavailability      1
enableplagiarism        0
enablebadges    1
enableglobalsearch      0
allowstealth    0
enableanalytics 0
messaging       1
enablecustomreports     1
allowemojipicker        1
userfiltersdefault      realname
defaultpreference_maildisplay   2
defaultpreference_mailformat    1
defaultpreference_maildigest    0
defaultpreference_autosubscribe 1
defaultpreference_trackforums   0
defaultpreference_core_contentbank_visibility   1
enroladminnewcourse     1
autologinguests 0
hiddenuserfields
showuseridentity        email
fullnamedisplay language
alternativefullnameformat       language
maxusersperpage 100
enablegravatar  0
gravatardefaulturl      mm
agedigitalconsentverification   0
agedigitalconsentmap    *, 16
AT, 14
BE, 13
BG, 14
CY, 14
CZ, 15
DK, 13
EE, 13
ES, 14
FI, 13
FR, 15
GB, 13
GR, 15
IT, 14
LT, 14
LV, 13
MT, 13
NO, 13
PT, 13
SE, 13
US, 13
sitepolicy
sitepolicyguest
enableasyncbackup       1
downloadcoursecontentallowed    0
maxsizeperdownloadcoursefile    52428800
enablecourserequests    1
defaultrequestcategory  1
lockrequestcategory     0
courserequestnotify
grade_report_showonlyactiveenrol        1
grade_report_quickgrading       1
grade_report_meanselection      1
grade_report_showaverages       1
grade_report_showranges 0
grade_report_showuserimage      1
grade_report_shownumberofgrades 0
grade_report_averagesdisplaytype        inherit
grade_report_rangesdisplaytype  inherit
grade_report_averagesdecimalpoints      inherit
grade_report_rangesdecimalpoints        inherit
grade_report_historyperpage     50
grade_report_overview_showrank  0
grade_report_overview_showtotalsifcontainhidden 0
grade_report_user_showrank      0
grade_report_user_showpercentage        1
grade_report_user_showgrade     1
grade_report_user_showfeedback  1
grade_report_user_showrange     1
grade_report_user_showweight    1
grade_report_user_showaverage   0
grade_report_user_showlettergrade       0
grade_report_user_rangedecimals 0
grade_report_user_showhiddenitems       1
grade_report_user_showtotalsifcontainhidden     0
grade_report_user_showcontributiontocoursetotal 1
gradepenalty_enabledmodules
grade_profilereport     user
grade_aggregationposition       1
grade_includescalesinaggregation        1
grade_hiddenasdate      0
gradepublishing 0
grade_export_exportfeedback     0
grade_export_displaytype        1
grade_export_decimalpoints      2
grade_export_userprofilefields  firstname,lastname,idnumber,institution,department,email
grade_export_customprofilefields
recovergradesdefault    0
jsrev   1771002204
templaterev     1771002204
filterall       0
rolesactive     1
activitychooseractivefooter     tool_moodlenet
gradeexport
gradeexport_default     ods
unlimitedgrades 0
grade_report_showmin    1
gradepointmax   100
gradepointdefault       100
grade_minmaxtouse       1
grade_mygrades_report   overview
gradereport_mygradeurl
grade_hideforcedsettings        1
grade_aggregation       13
grade_aggregation_flag  0
grade_aggregations_visible      13
grade_aggregateonlygraded       1
grade_aggregateonlygraded_flag  0
grade_aggregateoutcomes 0
grade_aggregateoutcomes_flag    0
grade_keephigh  0
grade_keephigh_flag     1
grade_droplow   0
grade_droplow_flag      0
grade_overridecat       1
grade_displaytype       1
grade_decimalpoints     2
badges_defaultissuername
badges_defaultissuercontact
badges_badgesalt        badges1771002164
badges_allowcoursebadges        1
badges_allowexternalbackpack    1
badges_canvasregions    Australia|https://au.badgr.io|https://api.au.badgr.io/v2
Canada|https://ca.badgr.io|https://api.ca.badgr.io/v2
Europe|https://eu.badgr.io|https://api.eu.badgr.io/v2
Singapore|https://sg.badgr.io|https://api.sg.badgr.io/v2
United States|https://badgr.io|https://api.badgr.io/v2
rememberuserlicensepref 1
timezone        Europe/London
forcetimezone   99
country 0
defaultcity
allcountrycodes
geoip2file      /var/www/moodledata/geoip/GeoIP-City.mmdb
geoipdbedition  GeoLite2-City
geoipmaxmindaccid
geoipmaxmindlicensekey
googlemapkey3
geopluginapikey
autolang        1
lang    en
autolangusercreation    1
langmenu        1
langlist
langcache       1
langstringcache 1
locale
latinexcelexport        0
enablepdfexportfont     0
messagingallusers       0
messagingdefaultpressenter      1
messagingdeletereadnotificationsdelay   604800
messagingdeleteallnotificationsdelay    2620800
messagingallowemailoverride     0
requiremodintro 0
registerauth
authloginviaemail       0
allowaccountssameemail  0
authpreventaccountcreation      0
loginpageautofocus      0
guestloginbutton        1
limitconcurrentlogins   0
alternateloginurl
showloginform   1
forgottenpasswordurl
auth_instructions
allowemailaddresses
denyemailaddresses
verifychangedemail      1
enableloginrecaptcha    0
enableforgotpasswordrecaptcha   0
recaptchapublickey
recaptchaprivatekey
loginpasswordtoggle     2
filteruploadedfiles     0
filtermatchoneperpage   0
filtermatchonepertext   0
filternavigationwithsystemcontext       1
media_default_width     640
media_default_height    360
portfolio_moderate_filesize_threshold   1048576
portfolio_high_filesize_threshold       5242880
portfolio_moderate_db_threshold 20
portfolio_high_db_threshold     50
questiondefaultssave    1
repositorycacheexpire   120
repositorygetfiletimeout        30
repositorysyncfiletimeout       1
repositorysyncimagetimeout      3
repositoryallowexternallinks    1
legacyfilesinnewcourses 0
legacyfilesaddallowed   1
searchengine    simpledb
searchindexwhendisabled 0
searchindextime 600
searchallavailablecourses       0
searchincludeallcourses 0
searchenablecategories  0
searchdefaultcategory   core-all
searchhideallcategory   0
searchmaxtopresults     3
searchteacherroles
searchenginequeryonly
searchbannerenable      0
searchbanner
allowbeforeblock        0
allowedip
blockedip
protectusernames        1
forcelogin      0
forceloginforprofiles   1
forceloginforprofileimage       0
opentowebcrawlers       0
allowindexing   0
maxbytes        0
userquota       104857600
allowobjectembed        0
enabletrusttext 0
maxeditingtime  1800
extendedusernamechars   0
keeptagnamecase 1
profilesforenrolledusersonly    1
cronclionly     1
cronremotepassword
lockoutthreshold        0
lockoutwindow   1800
lockoutduration 1800
passwordpolicy  1
minpasswordlength       8
minpassworddigits       1
minpasswordlower        1
minpasswordupper        1
minpasswordnonalphanum  1
maxconsecutiveidentchars        0
passwordpolicycheckonlogin      0
passwordreuselimit      0
pwresettime     1800
passwordchangelogout    1
passwordchangetokendeletion     0
tokenduration   7257600
groupenrolmentkeypolicy 1
disableuserimages       0
emailchangeconfirmation 1
rememberusername        2
strictformsrequired     0
cookiesecure    1
allowframembedding      0
curlsecurityblockedhosts        127.0.0.0/8
192.168.0.0/16
10.0.0.0/8
172.16.0.0/12
0.0.0.0
localhost
169.254.169.254
0000::1
curlsecurityallowedport 443
80
referrerpolicy  default
displayloginfailures    0
notifyloginfailures
notifyloginthreshold    10
calendartype    gregorian
calendar_adminseesall   0
calendar_site_timeformat        0
calendar_startwday      1
calendar_weekend        65
calendar_lookahead      21
calendar_maxevents      10
enablecalendarexport    1
calendar_customexport   1
calendar_exportlookahead        365
calendar_exportlookback 5
calendar_showicalsource 1
useblogassociations     1
bloglevel       4
useexternalblogs        1
externalblogcrontime    86400
maxexternalblogsperuser 1
blogusecomments 1
blogshowcommentscount   1
enabledashboard 1
defaulthomepage 1
allowguestmymoodle      1
navshowfullcoursenames  0
navshowcategories       1
navshowmycoursecategories       0
navshowallcourses       0
navsortmycoursessort    sortorder
navsortmycourseshiddenlast      1
navcourselimit  10
usesitenameforsitepages 0
linkadmincategories     1
navshowfrontpagemods    1
navadduserpostslinks    1
sitenameintitle shortname
formatstringstriptags   1
emoticons       [{"text":":-)","imagename":"s\/smiley","imagecomponent":"core","altidentifier":"smiley","altcomponent":"core_pix"},{"text":":)","imagename":"s\/smiley","imagecomponent":"core","altidentifier":"smiley","altcomponent":"core_pix"},{"text":":-D","imagename":"s\/biggrin","imagecomponent":"core","altidentifier":"biggrin","altcomponent":"core_pix"},{"text":";-)","imagename":"s\/wink","imagecomponent":"core","altidentifier":"wink","altcomponent":"core_pix"},{"text":":-\/","imagename":"s\/mixed","imagecomponent":"core","altidentifier":"mixed","altcomponent":"core_pix"},{"text":"V-.","imagename":"s\/thoughtful","imagecomponent":"core","altidentifier":"thoughtful","altcomponent":"core_pix"},{"text":":-P","imagename":"s\/tongueout","imagecomponent":"core","altidentifier":"tongueout","altcomponent":"core_pix"},{"text":":-p","imagename":"s\/tongueout","imagecomponent":"core","altidentifier":"tongueout","altcomponent":"core_pix"},{"text":"B-)","imagename":"s\/cool","imagecomponent":"core","altidentifier":"cool","altcomponent":"core_pix"},{"text":"^-)","imagename":"s\/approve","imagecomponent":"core","altidentifier":"approve","altcomponent":"core_pix"},{"text":"8-)","imagename":"s\/wideeyes","imagecomponent":"core","altidentifier":"wideeyes","altcomponent":"core_pix"},{"text":":o)","imagename":"s\/clown","imagecomponent":"core","altidentifier":"clown","altcomponent":"core_pix"},{"text":":-(","imagename":"s\/sad","imagecomponent":"core","altidentifier":"sad","altcomponent":"core_pix"},{"text":":(","imagename":"s\/sad","imagecomponent":"core","altidentifier":"sad","altcomponent":"core_pix"},{"text":"8-.","imagename":"s\/shy","imagecomponent":"core","altidentifier":"shy","altcomponent":"core_pix"},{"text":":-I","imagename":"s\/blush","imagecomponent":"core","altidentifier":"blush","altcomponent":"core_pix"},{"text":":-X","imagename":"s\/kiss","imagecomponent":"core","altidentifier":"kiss","altcomponent":"core_pix"},{"text":"8-o","imagename":"s\/surprise","imagecomponent":"core","altidentifier":"surprise","altcomponent":"core_pix"},{"text":"P-|","imagename":"s\/blackeye","imagecomponent":"core","altidentifier":"blackeye","altcomponent":"core_pix"},{"text":"8-[","imagename":"s\/angry","imagecomponent":"core","altidentifier":"angry","altcomponent":"core_pix"},{"text":"(grr)","imagename":"s\/angry","imagecomponent":"core","altidentifier":"angry","altcomponent":"core_pix"},{"text":"xx-P","imagename":"s\/dead","imagecomponent":"core","altidentifier":"dead","altcomponent":"core_pix"},{"text":"|-.","imagename":"s\/sleepy","imagecomponent":"core","altidentifier":"sleepy","altcomponent":"core_pix"},{"text":"}-]","imagename":"s\/evil","imagecomponent":"core","altidentifier":"evil","altcomponent":"core_pix"},{"text":"(h)","imagename":"s\/heart","imagecomponent":"core","altidentifier":"heart","altcomponent":"core_pix"},{"text":"(heart)","imagename":"s\/heart","imagecomponent":"core","altidentifier":"heart","altcomponent":"core_pix"},{"text":"(y)","imagename":"s\/yes","imagecomponent":"core","altidentifier":"yes","altcomponent":"core"},{"text":"(n)","imagename":"s\/no","imagecomponent":"core","altidentifier":"no","altcomponent":"core"},{"text":"(martin)","imagename":"s\/martin","imagecomponent":"core","altidentifier":"martin","altcomponent":"core_pix"},{"text":"( )","imagename":"s\/egg","imagecomponent":"core","altidentifier":"egg","altcomponent":"core_pix"}]
docroot https://docs.moodle.org
doclang
doctonewwindow  0
coursecreationguide     https://moodle.academy/coursequickstart
coursecontactduplicates 0
courselistshortnames    0
coursesperpage  20
courseswithsummarieslimit       10
courseoverviewfileslimit        1
courseoverviewfilesext  web_image
coursegraceperiodbefore 0
coursegraceperiodafter  0
yuicomboloading 1
cachejs 1
additionalhtmlhead
additionalhtmltopofbody
additionalhtmlfooter
cachetemplates  1
themelist
themedesignermode       0
allowuserthemes 0
allowcoursethemes       0
allowcategorythemes     0
allowcohortthemes       0
allowthemechangeonurl   0
allowuserblockhiding    1
langmenuinsecurelayout  0
logininfoinsecurelayout 0
navfilter       0
custommenuitems
customusermenuitems     profile,moodle|/user/profile.php
grades,grades|/grade/report/mygrades.php
calendar,core_calendar|/calendar/view.php?view=month
privatefiles,moodle|/user/files.php
reports,core_reportbuilder|/reportbuilder/index.php
file_redactor_exifremoverenabled        1
file_redactor_exifremovertoolpath
file_redactor_exifremoverremovetags     gps
file_redactor_exifremovermimetype       image/jpeg
image/tiff
cron_enabled    1
cron_keepalive  180
task_scheduled_concurrency_limit        3
task_scheduled_max_runtime      1800
task_adhoc_concurrency_limit    3
task_adhoc_max_runtime  1800
task_adhoc_failed_retention     2419200
task_logmode    1
task_logtostdout        1
task_logretention       2419200
task_logretainruns      20
smtphosts
smtpsecure
smtpauthtype    LOGIN
smtpuser
smtppass
smtpmaxbulk     1
allowedemaildomains
divertallemailsto
divertallemailsexcept
emaildkimselector
sitemailcharset 0
allowusermailcharset    0
allowattachments        1
mailnewline     LF
emailfromvia    1
emailsubjectprefix
emailheaders
enablewsdocumentation   0
pathtophp
pathtodu
pathtogs
pathtopdftoppm
supportname     Admin User
supportpage
supportavailability     1
servicespage
dbsessions      0
sessiontimeoutwarning   1200
sessioncookie
sessioncookiepath
sessioncookiedomain
statsfirstrun   none
statsmaxruntime 0
statsruntimedays        31
statsuserthreshold      0
slasharguments  1
getremoteaddrconf       3
reverseproxyignore
proxyhost
proxyport       0
proxytype       HTTP
proxyuser
proxypassword
proxybypass     localhost,127.0.0.1
proxylogunsafe  0
proxyfixunsafe  0
maintenance_message
deleteunconfirmed       168
deleteincompleteusers   0
disablegradehistory     0
gradehistorylifetime    0
tempdatafoldercleanup   168
xapicleanupperiod       4838400
filescleanupperiod      86400
extramemorylimit        512M
maxtimelimit    0
curlcache       120
curltimeoutkbitrate     56
updateautocheck 1
updateminmaturity       200
updatenotifybuilds      0
customreportslimit      0
customreportsliveediting        1
dndallowtextandlinks    0
pathtosassc
contextlocking  0
contextlockappliestoadmin       1
forceclean      0
enablecourserelativedates       0
enablesharingtomoodlenet        0
enablecommunicationsubsystem    0
debug   0
debugdisplay    0
perfdebug       7
debugstringids  0
debugsqltrace   0
debugvalidators 0
debugpageinfo   0
debugtemplateinfo       0
profilingenabled        0
profilingincluded
profilingexcluded
profilingautofrec       0
profilingallowme        0
profilingallowall       0
profilingslow   0
profilinglifetime       1440
profilingimportprefix   (I)
release 5.1.3 (Build: 20260216)
branch  501
h5plibraryhandler       h5plib_v127
paygw_plugins_sortorder paypal
langrev 1771002207
airnotifierurl  https://messages.moodle.net
airnotifierport 443
airnotifiermobileappname        com.moodle.moodlemobile
airnotifierappname      commoodlemoodlemobile
airnotifieraccesskey
bigbluebuttonbn_server_url
bigbluebuttonbn_shared_secret
bigbluebuttonbn_checksum_algorithm      SHA256
allversionshash 82fc9e70258d4eef1ddd97565f0ee834744bcea0
allcomponenthash        52220dc052f725b466ac1043f292742357ceffc1
themerev        1771002204
bigbluebuttonbn_recording_default       1
localcachedirpurged     1771002204
scheduledtaskreset      1771002204
supportemail    admin@host.docker.internal
enableaccessibilitytools        1
notloggedinroleid       6
guestroleid     6
defaultuserroleid       7
creatornewroleid        3
restorernewroleid       3
sitepolicyhandler
bigbluebuttonbn_poll_interval   5
gradebookroles  5
bigbluebuttonbn_welcome_default
bigbluebuttonbn_welcome_editable        1
bigbluebuttonbn_recording_refresh_period        300
bigbluebuttonbn_recording_editable      1
bigbluebuttonbn_recording_all_from_start_default        0
bigbluebuttonbn_recording_all_from_start_editable       0
bigbluebuttonbn_recording_hide_button_default   0
bigbluebuttonbn_recording_hide_button_editable  0
bigbluebuttonbn_recording_safe_formats  video,presentation
bigbluebuttonbn_importrecordings_enabled        0
maintenance_enabled     0
bigbluebuttonbn_importrecordings_from_deleted_enabled   0
bigbluebuttonbn_recordings_deleted_default      1
bigbluebuttonbn_recordings_deleted_editable     0
bigbluebuttonbn_recordings_imported_default     0
bigbluebuttonbn_recordings_imported_editable    1
bigbluebuttonbn_recordings_preview_default      1
bigbluebuttonbn_recordings_preview_editable     0
bigbluebuttonbn_recordings_asc_sort     0
bigbluebuttonbn_recording_protect_editable      1
bigbluebuttonbn_waitformoderator_default        0
bigbluebuttonbn_waitformoderator_editable       1
bigbluebuttonbn_waitformoderator_ping_interval  10
bigbluebuttonbn_waitformoderator_cache_ttl      60
bigbluebuttonbn_voicebridge_editable    0
bigbluebuttonbn_preuploadpresentation_editable  0
bigbluebuttonbn_userlimit_default       0
bigbluebuttonbn_userlimit_editable      0
bigbluebuttonbn_participant_moderator_default   0
bigbluebuttonbn_muteonstart_default     0
bigbluebuttonbn_muteonstart_editable    0
bigbluebuttonbn_disablecam_default      0
bigbluebuttonbn_disablecam_editable     1
bigbluebuttonbn_disablemic_default      0
bigbluebuttonbn_disablemic_editable     1
bigbluebuttonbn_disableprivatechat_default      0
bigbluebuttonbn_disableprivatechat_editable     1
bigbluebuttonbn_disablepublicchat_default       0
bigbluebuttonbn_disablepublicchat_editable      1
bigbluebuttonbn_disablenote_default     0
bigbluebuttonbn_disablenote_editable    1
bigbluebuttonbn_hideuserlist_default    0
bigbluebuttonbn_hideuserlist_editable   1
bigbluebuttonbn_recordingready_enabled  0
bigbluebuttonbn_profile_picture_enabled 0
bigbluebuttonbn_meetingevents_enabled   0
bigbluebuttonbn_guestaccess_enabled     0
chat_method     ajax
chat_refresh_userlist   10
chat_old_ping   35
chat_refresh_room       5
chat_normal_updatemode  jsupdate
chat_serverhost localhost
chat_serverip   127.0.0.1
chat_serverport 9111
chat_servermax  100
data_enablerssfeeds     0
feedback_allowfullanonymous     0
forum_displaymode       3
forum_shortpost 300
forum_longpost  600
forum_manydiscussions   100
forum_maxbytes  512000
forum_maxattachments    9
forum_subscription      0
forum_trackingtype      1
forum_trackreadposts    1
forum_allowforcedreadtracking   0
forum_oldpostdays       14
forum_usermarksread     0
forum_cleanreadtime     2
digestmailtime  17
forum_enablerssfeeds    0
forum_enabletimedposts  1
forum_announcementmaxbytes      512000
forum_announcementmaxattachments        1
forum_announcementsubscription  1
glossary_entbypage      10
glossary_dupentries     0
glossary_allowcomments  0
glossary_linkbydefault  1
glossary_defaultapproval        1
glossary_enablerssfeeds 0
glossary_linkentries    0
glossary_casesensitive  0
glossary_fullmatch      0
block_course_list_adminview     all
block_course_list_hideallcourseslink    0
block_grade_me_enableadminviewall       0
block_grade_me_maxcourses       10
block_grade_me_maxage   0
block_grade_me_enableshowhidden 0
block_grade_me_enableassign     1
block_grade_me_enabledata       0
block_grade_me_enableforum      0
block_grade_me_enableglossary   0
block_grade_me_enablelesson     0
block_grade_me_enablequiz       1
block_xp_context        50
block_online_users_timetosee    5
block_online_users_onlinestatushiding   1
block_rss_client_num_entries    5
block_rss_client_timeout        30
block_html_allowcssclasses      0
pathtounoconv   /usr/bin/unoconv
filter_multilang_force_old      0
profileroles    5,4,3
calendar_exportsalt     bs1YSqCpmf28ZVYCxi8PkGUFn1mSSErP3sywwz3FDFUK0pL4CgJoyQwjGaEK
coursecontact   3
frontpage       6
frontpageloggedin       6
maxcategorydepth        2
frontpagecourselimit    200
commentsperpage 15
defaultfrontpageroleid  8
messageinbound_enabled  0
messageinbound_mailbox
messageinbound_domain
messageinbound_host
messageinbound_hostssl  ssl
messageinbound_hostuser
messageinbound_hostpass
mobilecssurl
enablemobilewebservice  0
registrationpending     1
scorm_updatetimelast    1771002301
dbtype  pgsql
dblibrary       native
dbhost  moodle-db
dbname  moodle
dbuser  moodleuser
dbpass  M@0dl3ing
prefix  mdl_
wwwroot http://localhost:8085
dataroot        /var/www/moodledata
admin   admin
pathtodot
aspellpath
pathtopython
directorypermissions    511
dirroot /var/www/html/public
root    /var/www/html
filepermissions 438
umaskpermissions        0
taskruntimewarn 43200
taskruntimeerror        86400
routerconfigured
libdir  /var/www/html/public/lib
tempdir /var/www/moodledata/temp
backuptempdir   /var/www/moodledata/temp/backup
cachedir        /var/www/moodledata/cache
localcachedir   /var/www/moodledata/localcache
localrequestdir /tmp/requestdir
langotherroot   /var/www/moodledata/lang
langlocalroot   /var/www/moodledata/lang
yui2version     2.9.0
yui3version     3.18.1
yuipatchlevel   0
```