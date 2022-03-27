# git

## what is git

Git is a **distributed version-control** system for tracking changes in source code during software development. It is designed for coordinating work among programmers, but it can be used to track changes in any set of files. Its goals include **speed**, **data integrity**, and support for distributed, non-linear workflows.



## Hot to install Git

- Arch Linux

  ```shell
  pacman -S git
  ```

- Binary download

  ```
  https://git-scm.com/downloads
  ```

- check version

  ```
  git version
  ```

  

## Git structure

- Working Directory
- Local Repository
- Remote Repository
- Stage

![img](/home/hg/doc/study/assets/git.png)



## File's 4 kinds of status in git

- Untracked
- Unmodified
- Modified
- Staged



## Git commands



- git init

  > init current directory to a new git repository, a .git folder will be created.

- git add

  > add files to stage

- git commit

  > commit staged files to local repository

- git status

  > show status

- git log

  > git log --all --graph --oneline

- git config

  > git config --global user.name hugang
  >
  > git config --global user.email hugang0825@gmail.com
  >
  > git config --list

  > current repository config -> .git/config

- git stash

  > git stash
  >
  > git stash list
  >
  > git stash pop
  >
  > git stash drop

- git rm

  > delete from workspace and index