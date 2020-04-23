# Chromebooks
---
# Linux Turn on

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
$ sudo localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
```
