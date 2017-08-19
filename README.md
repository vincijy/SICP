
## 环境配置  

MIT Scheme + 编辑器EMACS  

[MIT Scheme 的基本使用](http://www.math.pku.edu.cn/teachers/qiuzy/progtech/scheme/mit_scheme.htm)

用编辑器编写函数，在命令行下通过load加载进解释器

## Emac 基本用法

### 常用快捷键

#### 文件操作

C-x C-f    按提示输入文件名，如果文件不存在则新建文件，如果文件存在则打开文件  
C-x C-s    保存  
C-x C-w    按提示输入文件名，另存为  
M-x customize-variable 回车 make-backup-files 回车     关掉文件备份  

C-x C-v   
这条指令也是用在打开文件，当你使用C-x C-f打开文件时，如果打开文件不是你所想要的，可以使用指令C-x   C-v打开另一个文件以替换当前打开的文件。

指令：C-x i  
这条指令主要用于在光标所在处插入文件，比如把另一个文件内容插入到当前文件。  

指令：C-x C-w  
该条指令主要是将buffer内容写入到文件内，其中buffer就是你在emacs窗口所写的内容啦！  

指令：C-x C-c  
关闭emacs  

#### 复制与贴贴  
选中某一块区域：CTRL+@（CTRL+SHIFT+2）或者CTRL+SPACE   移动光标到合适的位置（CTRL+p、CTRL+n、CTRL+f、CTRL+b分别是向上、下、前、后 来移动光标）。  
剪切快捷键：CTRL+k 删除当前位置到行末，CTRL+d相当于键盘上的DELETE键，  
删除前面的字符：BACKSPACE  
复制快捷键：ALT+w，将当前选中的文本复制到缓冲区。  
粘贴快捷键：CTRL+y  
保存快捷键：CTRL+x 然后按 CTRL+s  
退出快捷键:CTRL+x 然后: CTRL+c  
打开文件: CTRL+x 然后 : CTRL+f  

标记的快捷键是ctrl+空格和ctrl+@。前者和中文系统的输入法切换有冲突，后者其实是ctrl+shift+2，极度难按。所以如果经常按请重新设置键位。按完之后就进入了标记状态，然后以任意方式移动光标，标
记起始位和光标之间的内容都会被选中，然后根据情况你就能复制或者剪切。如果要多行，那么先ctrl-a到开头，然后ctrl+shift+2标记，ctrl+n移动数行，ctrl+e到行尾。然后该剪切剪切（ctrl+w），该复制复制（alt+w）。  

### 注释
多行注释：  
1. 选中一段区域到最后一行行首（！很重要！）；  
2. 按 C-x r t ；  
3. 输入注释内容；  

反多行注释：   
1. 选中一段区域到最后一行，紧挨着注释字符之后的位置（！很重要！）；  
2. 按 c-x r k；  

好在有一个 Alt-; 的快捷键，默认绑定了 comment-dwim，能注释/反注释当前激活的区域。如果没有激活区域，就在当前行末加注释  

 

