<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/6
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>性格测试-企业面试首选--职达面试</title>
    <link rel="shortcut icon" href="/static/image/favicon.ico">
    <link rel="bookmark" href="/static/image/favicon.ico">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/pageTop.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <script src="/static/js/jquery-3.4.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
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
                        <a class="nav-link" href="/news">新闻</a>
                    </li>
                    <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            课程 <span class="sr-only">(current)</span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                            <a class="dropdown-item" href="/interSkill">职达课程</a>
                            <a class="dropdown-item" href="/personTest">小测试</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/courseOrder">已购买课程</a>
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
    <div class="btdiv"><a data-scroll href="#" class="btt border rounded-circle" style="text-decoration:none;">↑<br>Top</a></div>
    <h3><a style="color: black" href="https://wenku.baidu.com/view/073c7221561252d381eb6e24?fromShare=1&fr=copy&copyfr=copylinkpop">性格测试——企业面试首选</a></h3>
    <span class="small" style="color: gray">注：所有选项及结果皆为临时数据，我们不会收集任何信息</span>
    <hr>
    <form>
        <div id="question01">
            <h5>1.你何时感觉最好？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q1" id="q1a" value="2">
                <label class="form-check-label" for="q1a">A.早晨</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q1" id="q1b" value="4">
                <label class="form-check-label" for="q1b">B.下午及傍晚</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q1" id="q1c" value="6">
                <label class="form-check-label" for="q1c">C.夜里</label>
            </div>
        </div>
        <br>
        <div id="question02">
            <h5>2.你走路时的状态是？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q2" id="q2a" value="6">
                <label class="form-check-label" for="q2a">A.大步的快走</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q2" id="q2b" value="4">
                <label class="form-check-label" for="q2b">B.小步的快走</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q2" id="q2c" value="7">
                <label class="form-check-label" for="q2c">C.不快，仰着头面对世界</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q2" id="q2d" value="2">
                <label class="form-check-label" for="q2d">D.不快，低着头</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q2" id="q2e" value="1">
                <label class="form-check-label" for="q2e">E.很慢</label>
            </div>
        </div>
        <br>
        <div id="question03">
            <h5>3.和人说话时，你的样子是？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q3" id="q3a" value="4">
                <label class="form-check-label" for="q3a">A.手臂交叠的站着</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q3" id="q3b" value="2">
                <label class="form-check-label" for="q3b">B.双手紧握着</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q3" id="q3c" value="5">
                <label class="form-check-label" for="q3c">C.一只手或两只手放在臀部</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q3" id="q3d" value="7">
                <label class="form-check-label" for="q3d">D.碰着或推着与你说话的人</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q3" id="q3e" value="6">
                <label class="form-check-label" for="q3e">E.玩耳朵、摸下巴、或者整理头发</label>
            </div>
        </div>
        <br>
        <div id="question04">
            <h5>4.坐着休息时，你的样子是？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q4" id="q4a" value="4">
                <label class="form-check-label" for="q4a">A.两膝盖并拢</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q4" id="q4b" value="6">
                <label class="form-check-label" for="q4b">B.两腿交叉</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q4" id="q4c" value="2">
                <label class="form-check-label" for="q4c">C.两腿伸直</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q4" id="q4d" value="1">
                <label class="form-check-label" for="q4d">D.一条腿卷在身下</label>
            </div>
        </div>
        <br>
        <div id="question05">
            <h5>5.碰到你感到好笑的事情时，你的反应是？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q5" id="q5a" value="6">
                <label class="form-check-label" for="q5a">A.一个欣赏的大笑</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q5" id="q5b" value="4">
                <label class="form-check-label" for="q5b">B.笑，但是声音不大</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q5" id="q5c" value="3">
                <label class="form-check-label" for="q5c">C.轻声的咯咯笑</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q5" id="q5d" value="5">
                <label class="form-check-label" for="q5d">D.羞怯的微笑</label>
            </div>
        </div>
        <br>
        <div id="question06">
            <h5>6.当你去一个派对或社交场合时，你的样子是？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q6" id="q6a" value="6">
                <label class="form-check-label" for="q6a">A.很大声的入场以引起注意</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q6" id="q6b" value="4">
                <label class="form-check-label" for="q6b">B.安静的入场，找你认识的人</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q6" id="q6c" value="2">
                <label class="form-check-label" for="q6c">C.非常安静的入场，尽量保持不被注意</label>
            </div>
        </div>
        <br>
        <div id="question07">
            <h5>7.当你非常专心的工作时，有人打断你，你会怎么样？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7a" value="6">
                <label class="form-check-label" for="q7a">A.欢迎他</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7b" value="2">
                <label class="form-check-label" for="q7b">B.感到非常恼怒</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7c" value="4">
                <label class="form-check-label" for="q7c">C.在以上两个极端之间</label>
            </div>
        </div>
        <br>
        <div id="question08">
            <h5>8.下列颜色中，你最喜欢哪一种颜色？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8a" value="6">
                <label class="form-check-label" for="q8a">A.红或橘色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8b" value="7">
                <label class="form-check-label" for="q8b">B.黑色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8c" value="5">
                <label class="form-check-label" for="q8c">C.黄或浅蓝色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8d" value="4">
                <label class="form-check-label" for="q8d">D.绿色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8e" value="3">
                <label class="form-check-label" for="q8e">E.深蓝或紫色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8f" value="2">
                <label class="form-check-label" for="q8f">F.白色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8g" value="1">
                <label class="form-check-label" for="q8g">G.棕或灰色</label>
            </div>
        </div>
        <br>
        <div id="question09">
            <h5>9.临入睡前几分钟，你在床上的姿势是？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q9" id="q9a" value="7">
                <label class="form-check-label" for="q9a">A.仰躺，伸直</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q9" id="q9b" value="6">
                <label class="form-check-label" for="q9b">B.俯卧，伸直</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q9" id="q9c" value="4">
                <label class="form-check-label" for="q9c">C.侧躺，微卷</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q9" id="q9d" value="2">
                <label class="form-check-label" for="q9d">D.头睡在一手臂上</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q9" id="q9e" value="1">
                <label class="form-check-label" for="q9e">D.被盖过头</label>
            </div>
        </div>
        <br>
        <div id="question10">
            <h5>10.你经常梦到什么？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q10" id="q10a" value="4">
                <label class="form-check-label" for="q10a">A.落下</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q10" id="q10b" value="2">
                <label class="form-check-label" for="q10b">B.打架或挣扎</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q10" id="q10c" value="3">
                <label class="form-check-label" for="q10c">C.找东西或人</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q10" id="q10d" value="5">
                <label class="form-check-label" for="q10d">D.飞或漂浮</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q10" id="q10e" value="6">
                <label class="form-check-label" for="q10e">E.你平常不做梦</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q10" id="q10f" value="1">
                <label class="form-check-label" for="q10f">F.你的梦都是愉快的</label>
            </div>
        </div>
        <br>
        <button type="button" id="qbtn" class="btn btn-info" data-toggle="modal" data-target="#resultModal">确定</button>
        <button type="reset" class="btn btn-light" >重置</button>
    </form>
    <div class="modal fade" id="resultModal" tabindex="-1" role="dialog" aria-labelledby="resultModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="resultModalLabel">测试结果<span class="small">（仅供参考）</span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    请确认是否每一道题都已选择
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" onclick="location.reload()">确定</button>
                </div>
            </div>
        </div>
    </div>
</main>

</body>

<script src="/static/js/front/index.js"></script>
<script>
    const scroll = new SmoothScroll('a[href*="#"]');
    $("#qbtn").click(function () {
        let q1 = Number($('input:radio[name="q1"]:checked').val());
        let q2 = Number($('input:radio[name="q2"]:checked').val());
        let q3 = Number($('input:radio[name="q3"]:checked').val());
        let q4 = Number($('input:radio[name="q4"]:checked').val());
        let q5 = Number($('input:radio[name="q5"]:checked').val());
        let q6 = Number($('input:radio[name="q6"]:checked').val());
        let q7 = Number($('input:radio[name="q7"]:checked').val());
        let q8 = Number($('input:radio[name="q8"]:checked').val());
        let q9 = Number($('input:radio[name="q9"]:checked').val());
        let q10 = Number($('input:radio[name="q10"]:checked').val());
        console.log(q1+","+q2+","+q3+","+q4+","+q5+","+q6+","+q6+","+q7+","+q8+","+q9+","+q10)
        let sum = q1+q2+q3+q4+q5+q6+q7+q8+q9+q10;
        // console.log(sum);
        let message = "";
        switch (true) {
            case sum<21:
                message = "你是：内向的悲观者<br>" +
                    "人们认为你是一个害羞的、神经质的、优柔寡断的，是需人照顾、永远要别人为你作决定、不想与任何事或任何人有关。" +
                    "他们认为你是一个杞人忧天者，一个永远看到不存在的问题的人。有些人认为你令人乏味，只有那些深知你的人知道你不是这样的人。";
                toModal(message);
                break;
            case sum<=30&&sum>=21:
                message = "你是：缺乏自信的挑剔者<br>" +
                    "你的朋友认为你勤勉刻苦、很挑剔。他们认为你是一个谨慎的、十分小心的人，一个缓慢而稳定辛勤工作的人。" +
                    "如果你做任何冲动的事或无准备的事，你会令他们大吃一惊。他们认为你会从各个角度仔细的检查一切之后仍经常决定不做。" +
                    "他们认为你的这种反应一部分是因为你的小心的天性所引起的。";
                toModal(message);
                break;
            case sum<=40&&sum>=31:
                message = "你是：以牙还牙的自我保护者<br>" +
                    "别人认为你是一个明智、谨慎、注重时效的人。也认为你是一个伶俐、有天赋有才干且谦虚的人。" +
                    "你不会很快、很容易和人成为朋友，但是是一个对朋友非常忠诚的人，同时要求朋友对你也有忠诚的回报。" +
                    "那些真正有机会了解你的人会知道摇动要你对朋友的信任是很难的，但相等的，一旦这信任被破坏，会使你很难过。";
                toModal(message);
                break;
            case sum<=50&&sum>=41:
                message = "你是：平和的中道<br>" +
                    "别人认为你是一个新鲜的、有活力的、有魅力的、好玩的、讲究实际的、而永远有趣的人；一个经常是群众注意力的焦点，但是你是一个足够平衡的人，不至于因此而昏了头。" +
                    "他们也认为你亲切、和蔼、体贴、能谅解人；一个永远会使人高兴起来并会帮助别人的人。";
                toModal(message);
                break;
            case sum<=60&&sum>=51:
                message = "你是：吸引人的冒险家<br>" +
                    "别人认为你是一个令人兴奋的、高度活泼的、相当容易冲动的个性；你是一个天生的领袖、一个做决定会很快的人，虽然你的决定不总是对的。" +
                    "他们认为你是大胆的和冒险的，会愿意试做任何事至少一次；是一个愿意尝试机会而欣赏冒险的人。因为你发散的刺激，他们喜欢跟你在一起。";
                toModal(message);
                break;
            case sum>60:
                message = "你是：傲慢的孤独者<br>" +
                    "别人认为对你必须‘小心处理’。在别人的眼中，你是自负的、自我中心的、是个极端有支配欲、统治欲的。" +
                    "别人可能钦佩你，希望能多像你一点，但不会永远相信你，会对与你更深入的来往有所踌躇及犹豫。";
                toModal(message);
                break;
        }
        // console.log(message);
    })
    function toModal(message) {
        $('#resultModal').on('show.bs.modal', function () {
            const modal = $(this);
            modal.find('.modal-body').html(message);
        });
    }
</script>
</html>
