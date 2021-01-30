## docker

- install

  ```shell
  pacman -S docker
  ```

- start service

  ```shell
  systemctl start docker
  ```

- build  image

  ```shell
  # enter the folder which contains a Dockfile
  docker build -t image_name .
  ```

- run image

  ```shell
  # sample to run theia-sts4
  docker run -it --init  -p 3000:3000 -p 8080:8080 -v "$(pwd):/home/project:cached" my-theia-sts4
  ```
