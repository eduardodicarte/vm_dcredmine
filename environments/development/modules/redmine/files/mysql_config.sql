CREATE DATABASE redminedb CHARACTER SET utf8;GRANT ALL ON redminedb.* TO 'redmine'@'localhost' IDENTIFIED BY 'redmine';
FLUSH PRIVILEGES;