function goOut() {
    let c = confirm("您将失去登录状态，是否继续？")
    if(c === true){
        localStorage.clear();
        location.reload();
    }
    if (c === false){
        // alert("已取消.");
        return false;
    }

}

function checkStatus(status) {
    if (status === "2"){
        location.href="/showUser.do";
        alert("当前账户为管理员账户，将跳转到信息管理页面。");
    }else if (status === "1"){
        // alert("欢迎您，尊敬的VIP用户！");
        console.log("vip");
        $("#vipSp").html("<span class='badge badge-pill badge-warning'>VIP</span>")
    }else if (status === "0"){
        $("#vipSp").html("<a href='/joinVip' class='badge badge-pill badge-info'>JoinVIP</a>")
    }
}

function checkMsg(id) {
    const uid = {"userId":id};
    $.post(
        "/checkMsg.do",
        uid,
        function (data) {
            // console.log(data);
            if (data != 0){
                let s = "<span class=\"badge badge-pill badge-danger\">"+data+"</span>";
                $("#msga").append(s);
            }
        }
    );
}

$(document).ready(function () {

    const id = localStorage.getItem("user_id");
    const status = localStorage.getItem("user_status");
    const loginName = localStorage.getItem("user_login_name");
    if (loginName != null){
        $("#login_place").html("<span id='vipSp'> </span>" +
            "<span >&nbsp; ID：</span><span>"+loginName+"&nbsp;|&nbsp;</span>" +
            "<a id='msga' href='/msg' style='color: #9d1d63'>消息:<img id='msg' src='/static/image/email.png' alt='' width='27px' height='27px'></a>" +
            "&nbsp;&nbsp;<button class='btn badge badge-secondary' onclick='goOut()'>注销</button>");
    }else {
        $("#login_place").html("<a class='btn btn-outline-success' href='/login'>登录</a>")
    }
    checkStatus(status);
    // console.log("status:"+status)
    checkMsg(id);

});
