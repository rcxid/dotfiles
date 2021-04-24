# Arch使用笔记

## 开发环境
- gcc
- rust
- go
- python
- java
- nodejs

## 桌面环境
- dwm
- dmenu
- st
  - zsh
    - powerlevel10k
- feh
- i3lock
- compton

## 字体
- ttf-windows
- nerd-font-complete

## 软件
- wmname
- yay
- docker
- typora
- fcitx5
  - fcitx5-pinyin
- vscode
- neovim
- toolbox
  - idea
- qq-liunx
- wechat-uos
- baidudisk
- neteasemusic
- qqmusic
- mpv
- vlc
- trayer
- fzf
- lazygit


##  创建用户目录文件夹 

```shell
yay -S xdg-user-dirs
xdg-user-dirs-update
```

## 开机自动打开数字键盘区

### startx

Install the [numlockx](https://archlinux.org/packages/?name=numlockx) package and add it to the `~/.xinitrc` file before `exec`:

```shell
#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

numlockx &

exec dwm
```

## 配置文件集中管理

```shell
# 安装stow
yay -S stow
```

## 双显卡方案
```shell
# 安装软件
yay -S nvidia-lts bbswitch optimus-manager-qt
```





