<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>登录--职达面试</title>
    <link rel="shortcut icon" href="/static/image/favicon.ico">
    <link rel="bookmark" href="/static/image/favicon.ico">
    <!-- 引入样式 -->
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/signin.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <script src="/static/js/jquery-3.4.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/scrollreveal"></script>
</head>
<body class="text-center">
    <div class="container three">
        <form class="form-signin needs-validation shadow bg-light rounded" novalidate autocomplete="off">
            <a href="/"><img class="mb-4" src="/static/image/login/login01.png" alt="" width="72" height="72"></a>
            <h1 class="h3 mb-3 font-weight-normal">请 登 录</h1>
            <label for="loginName" class="sr-only">Login Name</label>
            <input id="loginName" type="text" class="form-control" placeholder="请输入用户名" required autofocus>
            <div class="invalid-feedback text-left">
                请输入用户名！
            </div>
            <label for="password" class="sr-only">Password</label>
            <input id="password" type="password" class="form-control" placeholder="请输入密码" required>
            <div id="existID" class="text-left"></div>
            <div class="invalid-feedback text-left">
                请输入密码！
            </div>
            <div>
                <br><br>
                <button id="loginBtn" class="btn btn-lg btn-primary btn-block" type="button">确定</button>
            </div>
            <div>
                <a href="/register">注册新账户</a><br>
                <a href="/forgetPass">忘记密码?</a>
            </div>
            <!--    备案信息-->
            <div class="mt-5 mb-3 text-muted">
                <a href="/about" style="color: gray;">&copy; 2017-2020 职达面试 </a> <br>
                备案/许可证编号：津ICP备19009021号 <br>
                <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=12022302000551" style="color: gray;">
                    <img src="/static/image/beian.png" />
                    津公网安备 12022302000551号
                </a>
            </div>
        </form>
    </div>

</body>

<script src="/static/js/front/index.js"></script>
<script src="/static/js/front/login/login.js"></script>
<script>
    const lo = {
        distance : '200%',
        origin : 'left',
        opacity : null
    }
    ScrollReveal().reveal('.three',lo)
</script>
</html>