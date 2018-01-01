

window 系统下我用EMACS编辑程序，然后使用MIT Scheme编译。
## 环境配置  

MIT Scheme

编辑器EMACS（感觉MIT Scheme 自带的Edwin不太好用)    

[Emacs on window 初步实践](https://www.codelast.com/%E5%8E%9F%E5%88%9B-emacs-on-windows%E5%88%9D%E6%AD%A5%E5%AE%9E%E8%B7%B5/)    

[MIT Scheme 的基本使用](http://www.math.pku.edu.cn/teachers/qiuzy/progtech/scheme/mit_scheme.htm)


## window 下 MIT Scheme的一点配置与使用技巧


<div id="outline-container-orgaca1ef6" class="outline-2">
<h2 id="orgaca1ef6">1 初始位置设置</h2>
<div class="outline-text-2" id="text-orgaca1ef6">
<p> 我们一般通过函数load加载文件并且通过C-x C-e求值 加载文件需要知道文件的路径，路径太长不免麻烦，通过设置初始位置使得路径变短方便输入 </p>
</div>

<div id="outline-container-org688bd2f" class="outline-3">
<h3 id="org688bd2f">1.1 设置命令行的的初始位置</h3>
<div class="outline-text-3" id="text-org688bd2f">
<p> 你可以通过编辑配置文件scheme.ini来自定义MIT-Scheme Window平台的程序配置文件一般会在变量HOMEPATH下 通过快捷键win + R 输入cmd调出DOS，输入set homepath即可知道homepath的路径 将scheme.ini文件放在homepath下（没有则建立）。 </p>

<p> 一下举个例子： </p>

<p> 如果你的scheme文件都放在C：\doc </p>

<ul class="org-ul">
<li>在该文件下新建了个test.scm</li>

<li>编辑scheme.ini</li>
</ul>
<pre>
(cd "C:\\doc")
(define call/cc call-with-current-continuation)
</pre>
<ul class="org-ul">
<li>保存后重启动mit-scheme，C-x z进入命令行模式</li>
<li>现在只要输入(load "test.scm") 并且按C-x C-e即可运行文件。</li>
</ul>
</div>
</div>
<div id="outline-container-org6e13a7b" class="outline-3">
<h3 id="org6e13a7b">1.2 设置Edwin模式的初始位置</h3>
<div class="outline-text-3" id="text-org6e13a7b">
<p> 在桌面的快捷方式的属性设置里面编辑起始文件路径即可。 比如上面的例子编辑起始位置为"C:\doc"  现在在Edwin模式下只要输入(load "test.scm") 并且按C-x C-e即可运行文件。 </p>
</div>
</div>
</div>

<div id="outline-container-org7a02e37" class="outline-2">
<h2 id="org7a02e37">2 历史命令</h2>
<div class="outline-text-2" id="text-org7a02e37">
<p> 我么知道Dos 下或者终端中历史使用命令只要按个方向键上即可。 scheme-命令行模式下不知道如何使用命令行，但是edwin模式下和Emas类似通过 M-p(ALT + P)即可使用历史命令 </p>
</div>
</div>


