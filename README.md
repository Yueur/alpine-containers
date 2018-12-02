# Alpine container's repo

**GOING TO RENAME THIS REPO TO `Docker-container`**

This is my "Docker" repo for everything using alpine.

This was ment for a light-weight server (Raspberry Pi).

I'm recreating some existing images since i'm not working in a x86_64 environement but mainly for arm processor.

By default use the x86_64 image.
On Raspberry PI use armhf (**not yet tested !**)
There is other base images you can find [here](https://alpinelinux.org/downloads/)

## Uses
Here is a list all repos i'm using as is.

**There is no code stored from those repos in here.**

I don't know how i should quote what i use so i'll link every repo's i'm pulling from.
If you want it remove then just post an issue and w'll remove it asap.

* Kanboard (MIT)
  * [official](https://kanboard.org/)
  * [github](https://github.com/kanboard/kanboard)


## Use & customised
Here is a list all repos i pulled and customised a bit for my needs.

Usually it means there is a pull request...

*None*


## Folders
| Folder name | What it contains | Depends on |
| ----------: | :--------------- | :--------- |
| alpine      | Base image       |            |
| samba       | Samba share      | alpine     |
| doxygen     | Doc generator    | alpine     |
| nginx       | Nginx service    | alpine     |
| apache      | Apache server    | alpine     |
| apache-php  | PHP server       | apache     |
| kanboard    | Kanban webUI     | apache-php |

## TODO
* Add Healthcheck to other images
  - [x] Apache
  - [ ] DHCP
  - [ ] Kanboard
  - [ ] Nginx
  - [ ] Rsync
  - [ ] Samba

