<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>职达面试</title>
    <link rel="shortcut icon" href="/static/image/favicon.ico">
    <link rel="bookmark" href="/static/image/favicon.ico">
    <!-- 引入样式 -->
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <link rel="stylesheet" href="/static/css/index.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/lazyload.min.js"></script>
    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
</head>
<body >
<header>
    <nav class="navbar navbar-expand-md navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="/about">ZHIDA</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="active">
                        <a class="nav-link" href="/">主页 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="">
                        <a class="nav-link" href="/news">求职</a>
                    </li>
                    <li class="dropdown" >
                        <a href="#" class="nav-link dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown"  >
                            面试
                        </a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                            <li><a class="dropdown-item" href="/interSkill">面试技巧</a></li>
                            <li><a class="dropdown-item" href="/personTest">小测试</a></li>
                            <li class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="/courseOrder">已购买</a></li>
                        </ul>
                    </li>

                    <li class="">
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

<MAIN role="main">

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100"
                     src="${pageContext.request.contextPath}/static/image/index/101.jpg?auto=yes&bg=777&fg=555&text=First slide" alt="First slide">
                <div class="container">
                    <div class="carousel-caption text-left one">
                        <h1>职 达 面 试</h1>
                        <p> 我们致力于为在校学生、即将毕业的学生或者已经毕业但是尚未找到工作的同学提供一些面试、就业指导,
                            让您可以对面试有更加直接的了解和体验，提升自身竞争力，帮助您找到理想的工作。</p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100 lazy"
                     data-src="${pageContext.request.contextPath}/static/image/index/102.jpg?auto=yes&bg=666&fg=444&text=Second slide" alt="Second slide">
                <div class="container ">
                    <div class="carousel-caption one">
                        <h1>求 职</h1>
                        <p>在求职页面，我们准备了一些与就业有关的新闻报道，包含一些招聘信息，就业政策新闻等等。
                            想要了解更多可以点击下方或者导航的求职按钮！</p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100 lazy"
                     data-src="${pageContext.request.contextPath}/static/image/index/103.jpg?auto=yes&bg=555&fg=333&text=Third slide"
                     alt="Third slide">
                <div class="container">
                    <div class="carousel-caption text-left one">
                        <h1>面 试</h1>
                        <div class="c-i-width">
                            <p>在面试页面，我们准备了一些面试技巧和小测试，可以学习面试时需要了解的一些技巧或者测试自己的性格更加适合什么样的职业。
                                想要了解更多可以点击下方或者导航的面试按钮！</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <div class="container marketing">
        <!-- Three columns of text below the carousel -->
        <div class="row">
            <div class="col shadow-sm bg-white rounded two">
                <img  data-src="/static/image/index/201.png" class="bd-placeholder-img rounded-circle lazy" width="140" height="140">
                <h2>求职</h2>
                <p>您可以通过点击下方的求职按钮到达求职页，在那里您可以通过标题或者日期来检索您想要的咨询。
                    如果我们准备的内容并不符合您的口味，您可以点击导航栏的反馈联系我们，我们会尽快联系您！</p>
                <p><a class="btn btn-info" href="/news" role="button">求职 &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col shadow-sm bg-white rounded two">
                <img  data-src="/static/image/index/202.png" class="bd-placeholder-img rounded-circle lazy" width="140" height="140">
                <h2>面试技巧</h2>
                <p>您可以点击下方按钮访问面试技巧页，在那里我们准备了一些图文、视频教程，您可以选择观看。
                    如果我们准备的内容并不符合您的口味，您可以点击导航栏的反馈联系我们，我们会尽快联系您！</p>
                <p><a class="btn btn-info" href="/interSkill" role="button">面试技巧 &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col shadow-sm bg-white rounded two">
                <img  data-src="/static/image/index/203.png" class="bd-placeholder-img rounded-circle lazy" width="140" height="140">
                <h2>测试</h2>
                <p>您可以点击下方按钮到达小测试页面，我们准备了一些测试题目，来帮助分析您的性格，以帮助您选择合适的职业。
                    如果我们准备的内容并不符合您的口味，您可以点击导航栏的反馈联系我们，我们会尽快联系您！</p>
                <p><a class="btn btn-info" href="/personTest" role="button">测试 &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->


        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row position-relative three">
            <div class="col-md-7 position-static">
                <h2 class="featurette-heading">精品新闻推荐. <br><a href="/news001" class="text-muted ">>2019年应届毕业生就业优惠政策！</a></h2>
                <p class="lead"> 又将到一年高校毕业季。今年，应届毕业生规模预计达到834万人。面对庞大的求职大军，从国家到地方层面都出台了配套政策：提供求职创业补贴、严禁就业歧视、放宽落户条件……一系列举措将为毕业生踏出校门保驾护。</p>
            </div>
            <div class="col-md-5 img-fd">
                <img data-src="/static/image/index/301.png" class="bd-placeholder-img bd-placeholder-img-lg  img-fluid mx-auto lazy " width="500" height="500">
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row position-relative three">
            <div class="col-md-7 order-md-2 position-static">
                <h2 class="featurette-heading ">简历制作教程. <br><a href="/resume" class="text-muted ">>写好求职简历必看制作教程！</a></h2>
                <p class="lead">从真实案例进行入手，通过分析评价让你了解一些该注意的问题；描述简历制作技巧、注意事项让你制作一个合格的简历；从HR角度讲述什么样的建立可以脱颖而出。。。快来了解吧！</p>
            </div>
            <div class="col-md-5 order-md-1 img-fd">
                <img data-src="/static/image/index/302.png" class="bd-placeholder-img bd-placeholder-img-lg  img-fluid mx-auto lazy" width="500" height="500">
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row three">
            <div class="col-md-7">
                <h2 class="featurette-heading">企业测试题. <br><span class="text-muted">百度面试真题.</span></h2>
                <p class="lead">
                    <a class="aaa" href="/baidu1">->2015百度【数据处理】面试真题！！</a><br>
                    <a class="aaa" href="/baidu2">->2015百度【算法研发】校招面试真题——含解题思路！！</a></p>
            </div>
            <div class="col-md-5 img-fd">
                <img data-src="/static/image/index/303.png" class="bd-placeholder-img bd-placeholder-img-lg  img-fluid mx-auto lazy" width="500" height="500">
            </div>
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

    </div><!-- /.container -->
</MAIN>

<!-- FOOTER -->
<footer class="container">
    <p class="float-right"><a data-scroll href="#">Back to top</a></p>
    <p><a href="/about" style="color: gray;">&copy; 2017-2020 职达面试 </a>&middot; 备案/许可证编号：津ICP备19009021号 &middot;
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=12022302000551" style="color: gray;">
            <img class="lazy" src="/static/image/beian.png"/>津公网安备 12022302000551号
        </a>
    </p>
</footer>

</body>

<script src="/static/js/front/index.js"></script>
<script>
    $("img.lazy").lazyload();

    const slideUp = {
        distance: '150%',
        origin: 'bottom',
        opacity: null
    };
    ScrollReveal().reveal('.three',slideUp);

    const oneByOne = {
        interval: 260
    }
    ScrollReveal().reveal('.shadow-sm',oneByOne)

    let dd = function(or){
        const de = {
            distance: '110%',
            origin: or,
            delay: 100
        }
        ScrollReveal().reveal('.one',de)
    }
    dd('top');
    $('.carousel').on('slid.bs.carousel',function (e) {
        dd('bottom');
    })

    const scroll = new SmoothScroll('a[href*="#"]',{
        speed: 300
    });
</script>

</html>