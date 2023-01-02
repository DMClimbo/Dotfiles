# 文本内容操作

## echo

- 字符串尽量使用单引号，双引号内部特殊字符会转义

- `>`表示覆盖，`>>`表示追加

- 文件写入`permission denied`解决方法：

  ```
  etc "写入字符" | sudo tee 文件位置
  ```




## sed

- 替换文本内容

  ```
  sed 's/原字符串/替换字符串/' (最后一个斜杠不能少)
  
  如：
  sed -i 's/1.0.0.6/1.0.0.7/' /root/data/code-s3201/publish_codex/deploy/db.properties
  ```

  

  





## 文件操作

- 获取当前路径：`CURRENT_DIR=$(pwd)` 等号左右不能有空格

- cd 进入目录没反应：

  - 原因：

    1. 在shell在执行脚本的时候，会创建一个子shell，并在子shell中逐条执行脚本中的指令。
    2. 子shell会从父shell中继承了环境变量，但是执行后不会改变父shell的环境变量。
    3. 在子shell中的操作和环境变量不会影响父进程，在执行完shell后又回到了父进程。

  - 解决方法：

    使用source命令在当前的shell环境下执行脚本，不会创建子shell ，直接影响父进程。





