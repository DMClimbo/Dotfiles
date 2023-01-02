## windows terminal

### 安装

1. [微软官方商店](https://link.zhihu.com/?target=https%3A//www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701%3Frtc%3D1%26activetab%3Dpivot%3Aoverviewtab)
2. [Github页面](https://link.zhihu.com/?target=https%3A//www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701%3Frtc%3D1%26activetab%3Dpivot%3Aoverviewtab)
3. 通过Windows软件包工具winget : `winget install --id=Microsoft.WindowsTerminal -e`



### 配置









## WSL

### 安装

1. [下载发行版](https://docs.microsoft.com/zh-cn/windows/wsl/install-manual#downloading-distributions)
2. 下载文件到安装位置，修改后缀名：Ubuntu_2004.2020.424.0_x64.appx -> Ubuntu_2004.2020.424.0_x64.zip
3. 解压文件，双击ubuntu2004.exe安装



### 配置







## Powershell

### git配置

- [windows安装git](https://git-scm.com/download/win)

  

1. 基础配置

   ```
   git config --global user.email "2290470546@qq.com"
   git config --global user.name "yang"
   ```

   ​		

2. github 新建仓库，添加 ssh 密钥

   - 在本地创建 SSH Key 

     ```
     ssh-keygen -t rsa -C "2290470546@qq.com"
     ```

   - 复制 `~/.ssh/id_rsa.pub` 中的内容到 github settig-> SSH and GPG keys

     ​	

3. 绑定 github 远程仓库

   ```
   git remote add origin git@github.com:DMClimbo/XXX.git
   ```

   ​		

### 美化

1. 执行如下命令安装powerline字体合集

   ```
   git clone https://github.com/powerline/fonts.git
   cd fonts
   .\install.ps1
   ```

2. 打开terminal的JSON配置文件，在`scheme`中添加一个主题

   ```
   "schemes": [
       {
           "name" : "wsl2",
           "background" : "#002B36",
           "black" : "#002B36",
           "blue" : "#268BD2",
           "brightBlack" : "#657B83",
           "brightBlue" : "#839496",
           "brightCyan" : "#D33682",
           "brightGreen" : "#B58900",
           "brightPurple" : "#EEE8D5",
           "brightRed" : "#CB4B16",
           "brightWhite" : "#FDF6E3",
           "brightYellow" : "#586E75",
           "cyan" : "#2AA198",
           "foreground" : "#93A1A1",
           "green" : "#859900",
           "purple" : "#6C71C4",
           "red" : "#DC322F",
           "white" : "#93A1A1",
           "yellow" : "#B58900"
       }
   ],
   ```

3. 设置中将终端默认的主题设置为 `wsl2`主题，并更改Powerline字体为`DejaVu Sans Mono for Powerline`

