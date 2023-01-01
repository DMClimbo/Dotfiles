

# 配置清华软件源
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
echo   "
    # 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse" 
> /etc/apt/sources.list
sudo apt update 
sudo apt upgrade -y


#-------------------------------   软件安装   ---------------------------

# # 编程环境安装
# sudo apt install g++, 


# 常用软件安装
sudo apt install neovim, tree, ranger, tmux

wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb



#--------------------          环境配置   ----------------------------

# git配置
git config --global user.name "yang"
git config --global user.email "yanghang233@126.com"


# nvim配置


# tmux配置


# zsh配置文件

# # oh-my-zsh
# apt install git 



#----------------------------  重启应用配置  -------------------

# # 重启使设备生效
# source ./bashrc
# sudo reboot