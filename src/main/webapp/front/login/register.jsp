<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>注册--职达面试</title>
    <link rel="shortcut icon" href="/static/image/favicon.ico">
    <link rel="bookmark" href="/static/image/favicon.ico">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/signin.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <script src="/static/js/jquery-3.4.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/js/bootstrap.bundle.min.js"></script>
    <script src="https://unpkg.com/scrollreveal"></script>
</head>
<body class="text-center">
    <div class="container three" style="margin-top: 2%;">
        <form class="form-signin needs-validation shadow bg-light rounded" novalidate autocomplete="off">
            <a href="/" id="pop" data-toggle="popover" data-content="点此可以返回主页">
                <img class="mb-4 rounded-circle" src="/static/image/login/logo_.png" alt="" width="150" height="150"></a>
            <h1 class="h3 mb-3 font-weight-normal">请 注 册</h1>
            <label for="loginName" class="sr-only">Login Name</label>
            <input id="loginName" type="text" class="form-control" placeholder="请输入用户名" required autofocus>
            <div id="existName" class="text-left"></div>
            <div class="invalid-feedback text-left">
                请输入用户名！
            </div>

            <label for="password" class="sr-only">Password</label>
            <input id="password" type="password" class="form-control" placeholder="请输入密码" required>
            <div class="invalid-feedback text-left">
                请输入密码！
            </div>

            <label for="check_password" class="sr-only">Password</label>
            <input id="check_password" type="password" class="form-control" placeholder="请再次输入密码" required>
            <div id="checkP" class="text-left"></div>
            <div  class="invalid-feedback text-left">
                请输入密码！
            </div>

            <div>
                <span class="small" style="color: gray">注：以下内容将用于找回密码，皆为选填！</span>
                <label for="user_name" class="sr-only">Name</label>
                <input id="user_name" type="text" class="form-control" placeholder="请输入姓名">
                <label for="user_phone" class="sr-only">Phone</label>
                <input id="user_phone" type="number" class="form-control" placeholder="请输入电话号码">
                <label for="user_email" class="sr-only">E-Mail</label>
                <input id="user_email" type="email" class="form-control" placeholder="请输入E-Mail地址">
            </div>

            <div>
                <br>
                <button id="registerBtn" class="btn btn-lg btn-info btn-block" type="button">确定</button>
            </div>
            <div>
                <a href="/login">已有账户？点此登录</a><br>
            </div>
            <!--    备案信息-->
            <%--<div class="mt-5 mb-3 text-muted">
                <a href="/about" style="color: gray;">&copy; 2017-2020 职达面试 </a> <br>
                备案/许可证编号：津ICP备19009021号 <br>
                <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=12022302000551" style="color: gray;">
                    <img src="/static/image/beian.png" />
                    津公网安备 12022302000551号
                </a>
            </div>--%>
        </form>
    </div>

</body>

<script src="/static/js/front/index.js"></script>
<script src="/static/js/front/login/register.js"></script>
<script>
    const re = {
        distance : '200%',
        origin : 'left',
        opacity : null
    }
    ScrollReveal().reveal('.three',re)
</script>
</html>