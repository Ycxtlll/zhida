<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>小测试--职达面试</title>
    <link rel="shortcut icon" href="/static/image/favicon.ico">
    <link rel="bookmark" href="/static/image/favicon.ico">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <script src="/static/js/jquery-3.4.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/scrollreveal"></script>
    <style>
        .row{
            margin-top: 10px;
        }
    </style>
</head>
<body>
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
                    <li class="nav-item">
                        <a class="nav-link" href="/news">求职</a>
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
<main class="container" style="margin-top: 70px;height: 600px;">

    <div class="row three">
        <div class="col-sm-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">HR识人技巧</h5>
                    <p class="card-text">面试中的性格测试题</p>
                    <a href="/pt1" class="btn btn-primary">去看看</a>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">性格测试--企业面试首选</h5>
                    <p class="card-text">一个目前很多大公司人事部门采用的测试</p>
                    <a href="/pt2" class="btn btn-primary">去看看</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row three">
        <div class="col-sm-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">百度面试真题</h5>
                    <p class="card-text">2015百度【数据处理】面试真题(无答案)</p>
                    <a href="/baidu1" class="btn btn-primary">去看看</a>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">百度面试真题</h5>
                    <p class="card-text">2015百度【算法研发】校招面试真题——含解题思路</p>
                    <a href="/baidu2" class="btn btn-primary">去看看</a>
                </div>
            </div>
        </div>
    </div>


</main>
<!-- FOOTER -->
<footer class="container " >
    <hr>
    <p class="float-right"><a href="#">Back to top</a></p>
    <p><a href="/about" style="color: gray;">&copy; 2017-2020 职达面试 </a>&middot; 备案/许可证编号：津ICP备19009021号 &middot;
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=12022302000551" style="color: gray;">
            <img src="/static/image/beian.png"/>津公网安备 12022302000551号
        </a>
    </p>
</footer>

</body>

<script src="/static/js/front/index.js"></script>

<script>
    const scroll ={
        distance : '150%',
        origin : 'bottom',
        interval: 300
    }
    ScrollReveal().reveal('.three',scroll)
</script>

</html>