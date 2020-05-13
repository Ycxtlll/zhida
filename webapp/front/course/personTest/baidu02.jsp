<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/10
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>2015百度【算法研发】校招面试真题——含解题思路--职达面试</title>
    <link rel="shortcut icon" href="/static/image/favicon.ico">
    <link rel="bookmark" href="/static/image/favicon.ico">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/pageTop.css">
    <link rel="stylesheet" href="/static/css/style.css">

    <style>
        main p{
            font-size: 18px;
            letter-spacing: 1px;
            line-height: 30px;
        }
    </style>
</head>
<body>
<script src="/static/js/jquery-3.4.1.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<header>
    <nav class="navbar navbar-expand-md navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="/about">ZHIDA</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item ">
                        <a class="nav-link" href="/">主页 </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="/news">求职 </a>
                    </li>
                    <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            面试 <span class="sr-only">(current)</span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                            <a class="dropdown-item" href="/interSkill">面试技巧</a>
                            <a class="dropdown-item" href="/personTest">小测试</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/courseOrder">已购买</a>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link " href="/toUs">反馈</a>
                    </li>
                </ul>
                <div class="my-2 my-lg-0">
                    <div id="login_place"></div>
                </div>
            </div>
        </div>
    </nav>
</header>
<main class="container" style="margin-top: 70px">
    <div class="btdiv"><a data-scroll href="#" class="btt border rounded-circle" style="text-decoration:none;">↑<br>Top</a></div>
    <h3>2015百度【算法研发】校招面试真题——含解题思路</h3>
    <hr>
    <h4><strong>1 、进程切换需要注意哪些问题？</strong></h4>
    <p>
        保存处理器 PC 寄存器的值到被中止进程的私有堆栈；保存处理器 PSW 寄存器的值到被中止进程的私有堆栈；保存处理器 SP 寄存器的值到被中止进程的进程控制块；<br>
        保存处理器其他寄存器的值到被中止进程的私有堆栈；自待运行进程的进程控制块取 SP 值并存入处理器的寄存器 SP ；   自待运行进程的私有堆栈恢复处理器各寄存器的值；<br>
        自待运行进程的私有堆栈中弹出 PSW 值并送入处理器的 PSW ；自待运行进程的私有堆栈中弹出 PC 值并送入处理器的 PC 。
    </p>
    <h4><strong>2 、输入一个升序数组，然后在数组中快速寻找两个数字，其和等于一个给定的值。</strong></h4>
    <p>
        这个编程之美上面有这个题目的，很简单的，用两个指针一个指向数组前面，一个指向数组的后面，遍历一遍就可以了。
    </p>
    <h4><strong>3 、有一个名人和很多平民在一块，平民都认识这个名人，但是这个名人不认识任何一个平民，任意两个平民之间是否认识是未知的，请设计一个算法，快速找个这个人中的那个名人。   已知已经实现了一个函数   bool know(int a,int b) 这个函数返回 true 的时候，表明 a 认识 b ，返回 false 的时候表明 a 不认识 b 。</strong></h4>
    <p>
        思路：首先将 n 个人分为 n/2 组，每一组有 2 个人，然后每个组的两个人调用这个 know 函数，假设为 know （ a ， b ），返回 true 的时候说明 a 认识 b ，则 a 肯定不是名人， a 可以排除掉了，依次类推，每个组都调用这个函数依次，那么 n 个人中就有 n/2 个人被排除掉了，数据规模将为 n/2 。同理在剩下的 n/2 个人中在使用这个方法，那么规模就会将为 n/4 ，这样所有的遍历次数为 n/2+n/4+n/8+........ 这个一个等比数列，时间复杂度为 o （ n ）。
    </p>
    <h4><strong>4 、判断一个自然数是否是某个数的平方。当然不能使用开方运算。</strong></h4>
    <p>
        方法 1 ：<br>
        遍历从 1 到 N 的数字，求取平方并和 N 进行比较。<br>
        如果平方小于 N ，则继续遍历；如果等于 N ，则成功退出；如果大于 N ，则失败退出。<br>
        复杂度为 O(n^0.5) 。<br><br>

        方法 2 ：<br>
        使用二分查找法，对 1 到 N 之间的数字进行判断。<br>
        复杂度为 O(log n) 。<br><br>

        方法 3 ：<br>
        由于<br>
        (n+1)^2<br>
        =n^2 + 2n + 1 ，<br>
        = ...<br>
        = 1 + (2*1 + 1) + (2*2 + 1) + ... + (2*n + 1)<br><br>

        注意到这些项构成了等差数列（每项之间相差 2 ）。<br>
        所以我们可以比较 N-1 ， N - 1 - 3 ， N - 1 - 3 - 5 ... 和 0 的关系。<br>
        如果大于 0 ，则继续减；如果等于 0 ，则成功退出；如果小于 0 ，则失败退出。<br>
        复杂度为 O(n^0.5) 。不过方法 3 中利用加减法替换掉了方法 1 中的乘法，所以速度会更快些。<br><br>

        例如： 3^2 = 9 = 1 + 2*1+1 + 2*2+1 = 1 + 3 + 5<br>
        4^2 = 16 = 1 + 2*1 + 1 + 2*2+1  + 2*3+1<br>
        view plain<br>
        1.     int  square( int  n)<br>
        2.     {<br>
        3.          int  i = 1;<br>
        4.         n = n - i;<br>
        5.          while ( n > 0 )<br>
        6.         {<br>
        7.             i += 2;<br>
        8.             n -= i;<br>
        9.         }<br>
        10.       if ( n == 0 )         // 是某个数的平方<br>
        11.           return  1;<br>
        12.       else                  // 不是某个数的平方<br>
        13.           return  0;<br>
        14.  }<br>

    </p>
</main>

</body>

<script src="/static/js/front/index.js"></script>
<script>
    const scroll = new SmoothScroll('a[href*="#"]');
</script>
</html>
