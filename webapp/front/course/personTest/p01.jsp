<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/8
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>HR识人技巧--职达面试</title>
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
<main class="container" style="margin-top: 70px;">
    <div class="btdiv"><a data-scroll href="#" class="btt border rounded-circle" style="text-decoration:none;">↑<br>Top</a></div>
    <h3><a style="color: black" href="https://wenku.baidu.com/view/33ec7109a22d7375a417866fb84ae45c3a35c25c">HR识人技巧--面试中的性格测试</a></h3>
    <span class="small" style="color: gray">注：所有选项及结果皆为临时数据，我们不会收集任何信息</span>
    <hr>
    <form>
        <div id="question01">
            <h5>1.若有块地可盖养老的房子，你会盖在哪？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q1" id="q1a" value="8">
                <label class="form-check-label" for="q1a">A.靠近湖边</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q1" id="q1b" value="15">
                <label class="form-check-label" for="q1b">B.靠近河边</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q1" id="q1c" value="6">
                <label class="form-check-label" for="q1c">C.深山内</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q1" id="q1d" value="10">
                <label class="form-check-label" for="q1d">D.森林中</label>
            </div>
        </div>
        <br>
        <div id="question02">
            <h5>2.吃西餐最先动哪一道？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q2" id="q2a" value="6">
                <label class="form-check-label" for="q2a">A.面包</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q2" id="q2b" value="15">
                <label class="form-check-label" for="q2b">B.肉类</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q2" id="q2c" value="6">
                <label class="form-check-label" for="q2c">C.沙拉</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q2" id="q2d" value="6">
                <label class="form-check-label" for="q2d">D.饮料</label>
            </div>
        </div>
        <br>
        <div id="question03">
            <h5>3.如果节庆要喝点饮料，你认为如何搭配最适当？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q3" id="q3a" value="15">
                <label class="form-check-label" for="q3a">A.圣诞节/香槟</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q3" id="q3b" value="6">
                <label class="form-check-label" for="q3b">B.新年/牛奶</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q3" id="q3c" value="1">
                <label class="form-check-label" for="q3c">C.情人节/葡萄酒</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q3" id="q3d" value="6">
                <label class="form-check-label" for="q3d">D.国庆节/威士忌</label>
            </div>
        </div>
        <br>
        <div id="question04">
            <h5>4.你通常什么时候洗澡？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q4" id="q4a" value="10">
                <label class="form-check-label" for="q4a">A.晚饭后</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q4" id="q4b" value="15">
                <label class="form-check-label" for="q4b">B.晚饭前</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q4" id="q4c" value="6">
                <label class="form-check-label" for="q4c">C.看完电视后</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q4" id="q4d" value="8">
                <label class="form-check-label" for="q4d">D.上床前</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q4" id="q4e" value="6">
                <label class="form-check-label" for="q4e">E.早上起床后</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q4" id="q4f" value="3">
                <label class="form-check-label" for="q4f">F.没有特定时间</label>
            </div>
        </div>
        <br>
        <div id="question05">
            <h5>5.如果可以化为天空的一隅，希望自己成为什么呢？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q5" id="q5a" value="1">
                <label class="form-check-label" for="q5a">A.太阳</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q5" id="q5b" value="1">
                <label class="form-check-label" for="q5b">B.月亮</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q5" id="q5c" value="8">
                <label class="form-check-label" for="q5c">C.星星</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q5" id="q5d" value="15">
                <label class="form-check-label" for="q5d">D.云</label>
            </div>
        </div>
        <br>
        <div id="question06">
            <h5>6.你觉得用红笔写的“爱”字比用绿笔更代表真爱？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q6" id="q6a" value="1">
                <label class="form-check-label" for="q6a">A.是</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q6" id="q6b" value="3">
                <label class="form-check-label" for="q6b">B.否</label>
            </div>
        </div>
        <br>
        <div id="question07">
            <h5>7.如果你在选择窗帘的颜色时，你会选择？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7a" value="15">
                <label class="form-check-label" for="q7a">A.红色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7b" value="6">
                <label class="form-check-label" for="q7b">B.蓝色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7c" value="6">
                <label class="form-check-label" for="q7c">C.绿色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7d" value="8">
                <label class="form-check-label" for="q7d">D.白色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7e" value="1">
                <label class="form-check-label" for="q7e">E.黄色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7f" value="3">
                <label class="form-check-label" for="q7f">F.橙色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7g" value="1">
                <label class="form-check-label" for="q7g">G.黑色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q7" id="q7h" value="10">
                <label class="form-check-label" for="q7h">H.紫色</label>
            </div>
        </div>
        <br>
        <div id="question08">
            <h5>8.选择一种你最喜爱的水果？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8a" value="1">
                <label class="form-check-label" for="q8a">A.葡萄</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8b" value="6">
                <label class="form-check-label" for="q8b">B.梨</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8c" value="8">
                <label class="form-check-label" for="q8c">C.桔子</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8d" value="15">
                <label class="form-check-label" for="q8d">D.香蕉</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8e" value="3">
                <label class="form-check-label" for="q8e">E.樱桃</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8f" value="10">
                <label class="form-check-label" for="q8f">F.苹果</label>
            </div>
            <div></div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8g" value="8">
                <label class="form-check-label" for="q8g">G.葡萄柚</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8h" value="6">
                <label class="form-check-label" for="q8h">H.哈密瓜</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8i" value="3">
                <label class="form-check-label" for="q8i">I.柿子</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8j" value="10">
                <label class="form-check-label" for="q8j">J.木瓜</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q8" id="q8k" value="15">
                <label class="form-check-label" for="q8k">K.凤梨</label>
            </div>
        </div>
        <br>
        <div id="question09">
            <h5>9.若你是动物，你希望身上搭配什么颜色的毛？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q9" id="q9a" value="15">
                <label class="form-check-label" for="q9a">A.狮子/红色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q9" id="q9b" value="6">
                <label class="form-check-label" for="q9b">B.猫咪/蓝色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q9" id="q9c" value="1">
                <label class="form-check-label" for="q9c">C.大象/绿色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q9" id="q9d" value="6">
                <label class="form-check-label" for="q9d">D.狐狸/黄毛</label>
            </div>
        </div>
        <br>
        <div id="question10">
            <h5>10.你会为名利权位，刻意讨好上司或朋友吗？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q10" id="q10a" value="3">
                <label class="form-check-label" for="q10a">A.会</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q10" id="q10b" value="1">
                <label class="form-check-label" for="q10b">B.不会</label>
            </div>
        </div>
        <br>
        <div id="question11">
            <h5>11.你认为朋友比家人更重要吗？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q11" id="q11a" value="15">
                <label class="form-check-label" for="q11a">A.是</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q11" id="q11b" value="6">
                <label class="form-check-label" for="q11b">B.不是</label>
            </div>
        </div>
        <br>
        <div id="question12">
            <h5>12.若你是一只白蝴蝶，会停在哪种颜色的花上？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q12" id="q12a" value="15">
                <label class="form-check-label" for="q12a">A.红色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q12" id="q12b" value="8">
                <label class="form-check-label" for="q12b">B.粉红色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q12" id="q12c" value="3">
                <label class="form-check-label" for="q12c">C.黄色</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q12" id="q12d" value="6">
                <label class="form-check-label" for="q12d">D.紫色</label>
            </div>
        </div>
        <br>
        <div id="question13">
            <h5>13.假日无聊时，你会选择什么电视节目来看？</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q13" id="q13a" value="10">
                <label class="form-check-label" for="q13a">A.综艺节目</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q13" id="q13b" value="15">
                <label class="form-check-label" for="q13b">B.新闻节目</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q13" id="q13c" value="6">
                <label class="form-check-label" for="q13c">C.连续剧</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q13" id="q13d" value="15">
                <label class="form-check-label" for="q13d">D.体育转播</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="q13" id="q13e" value="10">
                <label class="form-check-label" for="q13e">E.电影频道</label>
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
        let q11 = Number($('input:radio[name="q11"]:checked').val());
        let q12 = Number($('input:radio[name="q12"]:checked').val());
        let q13 = Number($('input:radio[name="q13"]:checked').val());
        console.log(q1+","+q2+","+q3+","+q4+","+q5+","+q6+","+q6+","+q7+","+q8+","+q9
            +","+q10+","+q11+","+q12+","+q13)
        let sum = q1+q2+q3+q4+q5+q6+q7+q8+q9+q10+q11+q12+q13;
        // console.log(sum);
        let message = "";
        switch (true) {
            case sum>100:
                message = "积极，热情，个性开放，勇于追求目标理想，不易被困难击败。";
                toModal(message);
                break;
            case sum<=100&&sum>=90:
                message = "条理性强，喜欢思考，喜爱学习，不容许自己输给别人，好命令别人。领导型人物。";
                toModal(message);
                break;
            case sum<=89&&sum>=79:
                message = "表达能力丰富，多愁善感，做事优柔寡断，经常跟着感觉走。";
                toModal(message);
                break;
            case sum<=78&&sum>=60:
                message = "理性，做事谨小慎微，深思熟虑，与人无争，酷爱自由，为人忠诚。";
                toModal(message);
                break;
            case sum<=59&&sum>=40:
                message = "双重人，不会表达情感，总是压抑自己；孤寂人，对现实不满，不易与人相处，难以找到生活的目标和重心，自我防卫意识强。";
                toModal(message);
                break;
            case sum<40:
                message = "现实，心机重，心眼小，自私又自利，善见风使舵，能为自己打算未来，为自己创造一番天地。自我，固执己见。";
                toModal(message);
                break;
        }
        // console.log(message);
    })
    function toModal(message) {
        $('#resultModal').on('show.bs.modal', function () {
            const modal = $(this);
            modal.find('.modal-body').html("你的性格是：<br>"+message);
        });
    }
</script>
</html>
