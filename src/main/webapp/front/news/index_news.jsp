<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>新闻--职达面试</title>
    <link rel="shortcut icon" href="/static/image/favicon.ico">
    <link rel="bookmark" href="/static/image/favicon.ico">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <style>
        .none{
            width: 18rem;
        }
        .bttom{
            height: 485px;

        }
        @media (max-width: 1000px) {
            .col-sm-8 {
                -ms-flex: 0 0 60%;
                flex: 0 0 60%;
                max-width: 60%;
            }
            .col-9{
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }
            .none{
                display: none;
            }
            .bttom{
                height: auto;
            }
        }

        @media (min-width: 1000px) {
            .showd{
                display: none;
            }
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
                    <li class="nav-item active">
                        <a class="nav-link" href="/news">求职 <span class="sr-only">(current)</span></a>
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
    <form style="margin-top: 80px;">
        <div class="form-group row">
            <label for="searchNews" class="col-sm-2"> </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="searchNews" placeholder="请输入标题">
            </div>
            <div class="col">
                <button id="searchNewsBtn" type="button" class="btn btn-warning ">点此搜索</button>
            </div>
        </div>
    </form>
    <div class="showd">
        <small style="color: gray">*注：建议使用宽屏设备浏览此页面。</small>
    </div>
    <div id="showNews" class="row" >
        <div class="card col-3 none" >
            <img class="card-img-top" src="/static/image/index/newss.png" alt="Card image cap">
            <div class="card-body text-center">
                <form>
                    <label style="color: #6d63b2">通过日期搜索</label>
                    <input id="newsDate" type="date" class="form-control"/><br>
                    <button id="newsDateBtn" type="button" class="btn btn-warning">点此搜索</button>
                </form>
            </div>
        </div>
        <div class="col-9">
            <div class="bttom">
                <table class="table " id="news_table">

                </table>
            </div>
            <div id="newsPage" class="col-9" ></div>
        </div>
    </div>

</main>
<!-- FOOTER -->
<footer class="container " >
    <hr>
<!--    <p class="float-right"><a href="#">Back to top</a></p>-->
    <p><a href="/about" style="color: gray;">&copy; 2017-2020 职达面试 </a>&middot; 备案/许可证编号：津ICP备19009021号 &middot;
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=12022302000551" style="color: gray;">
            <img src="/static/image/beian.png"/>津公网安备 12022302000551号
        </a>
    </p>
</footer>

</body>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/front/index.js"></script>
<script src="${pageContext.request.contextPath}/static/js/front/news/index_news.js"></script>
</html>