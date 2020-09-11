# Re install script

This script is used to install bioinformatics software and it's required libraries on a clean linux (ubuntu-like) install.

This means that libraries can be installed with `apt-get`.

I update this git when new versions of software have appeared.
For my work desktop computer I'll run the full script
Concerning other computers I'll just execute some lines.
This git is a **MEMO** for myself.
You are welcome to make corrections and suggestions.

Use under your own risk.

## Managing users in command line

There are some legacy commands, they start with **user-**,
they are still used but are less versatile.
https://askubuntu.com/questions/345974/what-is-the-difference-between-adduser-and-useradd

### Add user

Use `adduser` not `useradd`.
The first one is a perl overlay with extra options making the process easier:

First create a new user, then you can add it to different groups withouth changing its main group:

```bash
sudo adduser user
sudo usermod -aG sudo user
```

#### Details about adding users/groups:

* **--system** creates accounts which do not have a password and thus one cannot log in with them.
They are used for services
* The default group when adding a user is his own user group
* The list of **all** users can be found here: `/etc/passwd`
* The configuration of for new users is defined in `/etc/adduser.conf`
* All the files in `/etc/skel/` will be copied to the new user's home


### Choose groups

There are some default groups for users and for admin/sudo users,
The most common groups for admin are:
adm, cdrom, lpadmin, sudo, sambashare, dip, plugdev

**adm** and **sudo** are equivalent groups.
**adm** seems to be a legacy group that is now covered by **sudo** but it still exists and is being used as default in ubuntu.

For more details:
https://askubuntu.com/questions/219083/default-groups-for-user-in-ubuntu


#### Default


### Remove users

To remove a user and remove all directories with its name use **-r**
It will remove the mail spool as well as its home directory.

```bash
userdel -r
```

