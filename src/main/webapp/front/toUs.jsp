<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>反馈--职达面试</title>
    <link rel="shortcut icon" href="/static/image/favicon.ico">
    <link rel="bookmark" href="/static/image/favicon.ico">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
<!--    <link rel="stylesheet" href="/static/css/signin.css">-->
    <link rel="stylesheet" href="/static/css/style.css">
    <style>
        body{
            overflow: hidden;
            width: 100vw;
            height: 100vh;
            background-image: linear-gradient(125deg,#00f260, #0575e6);
            background-size: 300%;
            animation: bganimation 20s infinite;
        }
        @keyframes bganimation {
            0%{
                background-position: 0% 50%;
            }
            50%{
                background-position: 100% 50%;
            }
            100%{
                background-position: 0% 50%;
            }
        }
        .tform{
            width: 100%;
            max-width: 500px;
            padding: 15px;
            margin: 10% auto auto;
        }
    </style>
</head>
<body>
<script src="/static/js/jquery-3.4.1.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/front/index.js"></script>
<script src="/static/js/front/toUs.js"></script>
<script src="https://unpkg.com/scrollreveal"></script>
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
                        <a class="nav-link" href="/">主页</a>
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
                        <a class="nav-link active" href="/toUs">反馈 <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <div class="my-2 my-lg-0">
                    <div id="login_place"></div>
                </div>
            </div>
        </div>
    </nav>
</header>
<main class="container" style="height: 100vh">
    <div class="tform shadow-sm bg-white rounded three" style="margin-top: 70px;">
        <form class="needs-validation" novalidate autocomplete="off">
            <div class="form-group">
                <label>联系方式（选填）</label>
                <label for="contactInfo" class="sr-only">Contact Information </label>
                <input id="contactInfo" type="text" class="form-control" placeholder="请填写电话、QQ、微信任意一种。">
            </div>
            <div class="form-group">
                <label>您想对我们说的话</label>
                <label for="feedbackContent" class="sr-only">Feedback Content</label>
                <textarea id="feedbackContent" class="form-control" placeholder="十分感谢您的留言！" rows="5" required autofocus></textarea>
                <div class="invalid-feedback text-left">
                    您尚未输入留言！
                </div>
            </div>
            <div class="form-group">
                <button type="button" id="feedbackBtn" class="btn btn-primary">提交反馈</button>
            </div>
        </form>
    </div>
</main>
<!-- FOOTER -->
<footer class="container fixed-bottom">
    <hr>
<!--    <p class="float-right"><a href="#">Back to top</a></p>-->
    <p><a href="/about" style="color: white;">&copy; 2017-2020 职达面试 </a>&middot; 备案/许可证编号：津ICP备19009021号 &middot;
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=12022302000551" style="color: whitesmoke;">
            <img src="/static/image/beian.png"/>津公网安备 12022302000551号
        </a>
    </p>
</footer>

</body>

<script>
    const scroll = {
        distance : '150%',
        origin : 'top',
        delay : 300
    }
    ScrollReveal().reveal('.three',scroll)
</script>

</html>