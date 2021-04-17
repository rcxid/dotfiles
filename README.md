# dotfiles

使用GNU stow统一管理Linux配置文件，方便重装系统恢复。

## 安装Stow

```shell
# yay
yay -S stow
# pacman
sudo pacman -Ss stow
```

## 创建配置文件目录并使用git管理

```shell
mkdir ~/dotfiles
cd ~/dotfiles
git init
....
git add .
git commit -m "init"
git remote add origin https://xxx.com/xxx/xxx.git
git push -u origin master
```

## 使用stow

```shell
cd ~/dotfiles

# example nvim 目录结构保持和软件配置目录结构相同
tree -a nvim
nvim
└── .config
    └── nvim
        ├── autoload
        │   └── plug.vim
        ├── config
        │   ├── mapping.vim
        │   └── setting.vim
        ├── init.vim
        └── vim-plug
            └── plugins.vim
# 生成软链接
stow nvim
```

