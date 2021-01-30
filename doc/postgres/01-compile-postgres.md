## Postgresql

> packages: gcc libreadline-dev zlib1g-dev

- 安装，启动

   ```shell
   ./configure
   make
   su
   make install
   useradd postgres
   mkdir /usr/local/pgsql/data
   chown postgres /usr/local/pgsql/data
   su - postgres
   /usr/local/pgsql/bin/initdb -D /usr/local/pgsql/data
   /usr/local/pgsql/bin/postgres -D /usr/local/pgsql/data >/usr/local/pgsql/data/pgsql.log 2>&1 &
   /usr/local/pgsql/bin/createdb test
   /usr/local/pgsql/bin/psql test
   ```

- 启动远程连接

  ```shell
  #pg_hba.conf
  host    all    all        0.0.0.0/32    md5
  ```

- 一些常用命令

    ```shell
    # psql连接数据库
    psql -U postgres -d dbname
    # 执行sql
    psql -U postgres -d dbname -f "...../xxx.sql"
    
    # list databases
    postgres=# \l
    
    # enter database
    postgres=# \c postgres;
    
    # drop database
    postgres=# drop database test;
    
    # create user
    postgres=# create user gitea PASSWORD 'gitea';
    
    # change password
    postgres=# alter user postgres PASSWORD 'postgres';
    
    # create database and grant to user
    postgres=# create database gitea;
    postgres=# grant ALL ON database gitea to gitea;
    
    ```
