<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/12
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>加入VIP--职达面试</title>
    <link rel="shortcut icon" href="/static/image/favicon.ico">
    <link rel="bookmark" href="/static/image/favicon.ico">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/style.css">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="/about">ZHIDA <span class="sr-only">(current)</span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item ">
                        <a class="nav-link" href="/">主页 </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/news">求职</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            面试
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
<main class="container" style="margin-top: 70px;">
    <h4 class="text-center">请选择下列支付方式:</h4>
    <ul class="nav nav-tabs justify-content-center" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="alipay" data-toggle="tab" href="#zfb" role="tab" aria-selected="true">支付宝支付</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="wechat" data-toggle="tab" href="#wx" role="tab" aria-selected="false">微信支付</a>
        </li>
    </ul>
    <div class="tab-content text-center">
        <div class="tab-pane fade show active" id="zfb" role="tabpanel" aria-labelledby="alipay">
            <img src="/static/image/joinVip/zfb.jpg">
        </div>
        <div class="tab-pane fade show" id="wx" role="tabpanel" aria-labelledby="wechat">
            <img src="/static/image/joinVip/wx.jpg">
        </div>
    </div>
    <div class="text-center">
        <small style="color: gray">*注：此功能尚处于开发状态，我们无法确定支付状态，因此未支付也可点击成为VIP用户。</small><br>
        <button id="JVBtn" class="btn btn-info">支付完成后请点此</button>
    </div>
</main>
</body>
<script src="/static/js/jquery-3.4.1.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/front/index.js"></script>
<script>
$("#JVBtn").click(function () {
    const uid = localStorage.getItem("user_id");
    // console.log(uid)
    const userId = {"user_id":uid};
    $.post(
        "/joinvip.do",
        userId,
        function (data) {
            if (data==="false"){
                alert("Error：发生错误，请重试！")
            }else {
                localStorage.setItem("user_status","1");
                location.href="/";
            }
        }
    );
});
</script>
</html>
