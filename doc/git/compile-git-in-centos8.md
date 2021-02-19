```bash
yum install make gcc gcc-c++ libcurl-devel openssl-devel expat-devel

# enable powertools repo
# edit /etc/yum.repos.d/CentOS-PowerTools.repo
# set enable=1

yum install -y asciidoc xmlto docbook2X
# modify docbook2x-texi: command not found
ln -s /usr/bin/db2x_docbook2texi /usr/bin/docbook2x-texi

make prefix=/usr all doc info install
```