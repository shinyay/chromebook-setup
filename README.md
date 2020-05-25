# Chromebooks
---
# Linux Turn on

![Linux-Turn-On](images/Linux-Turn-On.png)
![Setup-Linux](images/Setup-Linux.png)
![Installing-Linux](images/Installing-Linux.png)
![Terminal](images/Terminal.png)

# Crostini
## 1. Initial Setup
### Update
```
$ sudo apt update && sudo apt upgrade -y
```

### Chrome Configuration
#### GPU Support for Crostini
[Crostini GPU Support](chrome://flags/#crostini-gpu-support)

#### Hyper-Threading
[Scheduler Configuration](chrome://flags#scheduler-configuration)

### Git Configuration
```
$ git config --global user.name "shinyay"
$ git config --global user.email ""
$ git config --global core.quotepath false
$ git config --global core.safecrlf true
$ git config --global core.autocrlf false
$ git config --global core.editor 'vim -c "set fenc=utf-8"'
$ git config --global color.diff auto
$ git config --global color.status auto
$ git config --global color.branch auto
```

#### Git Alias
- **git status**
```
$ git config --global alias.st status
````

- **git log**
```
$ git config --global alias.plog "log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=iso"
$ git config --global alias.glog "log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=format:'%c' --all --graph"
```

### Japanese Env
#### Timezone
```
$ sudo dpkg-reconfigure tzdata
```

#### Font
```
$ sudo apt -y install task-japanese locales-all fonts-ipafont
```

#### Locale
```
$ sudo localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
```
```
$ source /etc/default/locale
```

## 2. IntelliJ
### SDKMAN!
```
$ curl -s "https://get.sdkman.io" | bash
$ source  "$HOME/.sdkman/bin/sdkman-init.sh"
$ sdk help
```
```
$ vim ~/.sdkman/etc/config
sdkman_beta_channel=true

$ sdk selfupdate force
```
### JDK
```
$ sdk list java
$ sdk install java 11.0.7-open
```

### IntelliJ
Open [IntellJ for Linux Download](https://www.jetbrains.com/idea/download/#section=linux)

```
$ sudo tar xvf ideaIU-2020.1.tar.gz -C /opt
```

## 3. Fish
```
$ sudo apt install fish
$ sudo chsh --shell $(which fish) $USER
```

### Change to Bash
```
$ sudo chsh --shell (which bash) $USER
```

### Fisherman
```
$ curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

fisher version 3.2.10 ~/.config/fish/functions/fisher.fish
```

### Fish Plugin


## Google Cloud SDK
