# Chromebooks
---
# Linux Turn on

[Linux-Turn-On](images/Linux-Turn-On.png)
[Setup-Linux](images/Setup-Linux.png)
[Installing-Linux](images/Installing-Linux.png)
[Terminal](images/Terminal.png)

# Crostini
## Initial Setup
```
$ sudo apt update && sudo apt upgrade -y
```
## Japanese Env
### Timezone
```
$ sudo dpkg-reconfigure tzdata
```

### Font
```
$ sudo apt -y install task-japanese locales-all fonts-ipafont
```

### Locale
```
$ sudo localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
```
```
$ source /etc/default/locale
```
