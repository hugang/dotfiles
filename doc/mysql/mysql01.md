# mysql quick start

## download mysql zip

https://cdn.mysql.com//Downloads/MySQL-5.7/mysql-5.7.31-winx64.zip

## unzip mysql zip

## init data folder
mysqld --user=mysql --basedir C:\tools\mysql-5.7.31-winx64 --datadir=C:\tools\mysql-5.7.31-winx64\data\ --log-error-v erbosity=3 --initialize-insecure

## start mysql service
mysqld --user=mysql &

## login as root without password
mysql -uroot -p

## change mysql password
use mysql;
UPDATE user SET authentication_string=password('123456') WHERE user='root';
flush privileges;

## truble shooting
Windows Error Message: Missing MSVCP120.dll File
Update for Visual C++ 2013 and Visual C++ Redistributable Package
http://download.microsoft.com/download/8/2/9/829ac8b2-e111-4f58-9b23-205a5e7d656a/vcredist_x64.exe