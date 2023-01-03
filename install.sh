 echo "---------------------前置准备-------------------------------"

 # 创建临时文件夹存放安装包和过程文件
 TEMP_DIR=$(pwd)/temp
 echo $TEMP_DIR
 mkdir $TEMP_DIR
 cd $TEMP_DIR


 echo "---------------------配置清华软件源-------------------------------"
#
 sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
 echo  "# 根据ubuntu版本选择对应代号  18.04: [bionic]  20.04: [focal]  22.04: [jammy]
 deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
 # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
 deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
 # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
 deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
 # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
 deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
 # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse" | sudo tee /etc/apt/sources.list


 sudo add-apt-repository ppa:longsleep/golang-backports -y
 sudo apt update
 sudo apt upgrade -y


#==========================================================================
#                       软件安装
#==========================================================================

 echo "---------------------编程环境安装-------------------------------"
 sudo apt install g++  openjdk-11-jdk  -y

 wget -c https://go.dev/dl/go1.19.4.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local
 sudo echo  'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
 source ~/.profile

 wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
 chmod +x Anaconda3-2022.10-Linux-x86_64.sh
 ./Anaconda3-2022.10-Linux-x86_64.sh


 echo "----------------------常用软件安装-------------------------------"
 sudo apt install tree ranger tmux git zsh -y
 sudo apt  purge vim -y
 wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
 sudo apt install ./nvim-linux64.deb

 sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y


#==========================================================================
#                       软件环境配置
#==========================================================================

 echo "-------------------  shell 配置开始 -----------------"
 sed -i 's/robbyrussell/agnoster/' ~/.zshrc
 sed -i 's/prompt_segment black default "%(!.%{%F{yellow}%}.)%n@%m"/prompt_segment green black "%(!.%{%F{yellow}%}.)%n"/' ~/.oh-my-zsh/themes/agnoster.zsh-theme

 echo "----------------------  shell 配置完成 -------------------------------"

 echo "---------------------- git 配置 -------------------------------"
 git config --global lsp.name "yang"
 git config --global lsp.email "yanghang233@126.com"
 ssh-keygen -t rsa -C "yanghang233@126.com"

 echo "---------------------- nvim 配置 -------------------------------"


 echo "---------------------- 快捷命令配置 -------------------------------"
echo "alias vim='nvim'
alias vimconf='vim ~/.config/nvim/init.vim'
alias tn='tmux new -s'" >> ~/.zshrc
source ~/.zshrc
