#!/usr/bin/env bash

docker-compose exec ftp bash

pure-pw useradd root    -f "$FTP_PASSWD_DB" -m -u "$FTP_USER_UID" -g "$FTP_USER_GID" -d "$FTP_USER_HOME"
useradd -G ftpgroup -s /sbin/nologin ftp-readonly
pure-pw useradd guest   -f "$FTP_PASSWD_DB" -m -u ftp-readonly    -g ftp-readonly    -d "$FTP_USER_HOME/files"
pure-pw useradd manager -f "$FTP_PASSWD_DB" -m -u "$FTP_USER_UID" -g "$FTP_USER_GID" -d "$FTP_USER_HOME/files"
pure-pw useradd blogger -f "$FTP_PASSWD_DB" -m -u "$FTP_USER_UID" -g "$FTP_USER_GID" -d "$FTP_USER_HOME/blog"
pure-pw useradd geektr  -f "$FTP_PASSWD_DB" -m -u "$FTP_USER_UID" -g "$FTP_USER_GID" -d "$FTP_USER_HOME"
