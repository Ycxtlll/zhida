<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>关于我们--职达面试</title>
    <link rel="shortcut icon" href="/static/image/favicon.ico">
    <link rel="bookmark" href="/static/image/favicon.ico">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <style>
        .featurette-divider {
            margin: 5rem 0; /* Space out the Bootstrap <hr> more */
        }
    </style>
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
<main >
    <div class="container " style="height: 600px;">
        <div class="jumbotron" style="text-align: center;margin-top: 70px;">
            <h1 class="display-4">HEY,THERE!</h1>
            <p class="lead">
                This website is from ZHIDA, we are a team. Although it is made for the competition at present, it may also be put into commercial use in the future!</p>
            <hr class="my-4">
            <p>If you want to contact us, please click the button below.</p>
            <a class="btn btn-primary btn-lg" href="/toUs" role="button">Learn more</a>
        </div>
<%--        <hr class="featurette-divider">--%>
    </div>

    <!-- FOOTER -->
    <footer class="container">
        <hr>
<!--        <p class="float-right"><a href="#">Back to top</a></p>-->
        <p><a href="/about" style="color: gray;">&copy; 2017-2020 职达面试 </a>&middot; 备案/许可证编号：津ICP备19009021号 &middot;
            <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=12022302000551" style="color: gray;">
                <img src="/static/image/beian.png"/>津公网安备 12022302000551号
            </a>
        </p>
    </footer>
</main>

</body>
<script src="/static/js/jquery-3.4.1.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/front/index.js"></script>

</html>