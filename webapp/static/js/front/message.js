$(document).ready(function () {
    let uid = localStorage.getItem("user_id");
    // console.log("uid:"+uid)
    if (uid === null){
        location.href="/"
    }
    let userId = {"userId":uid};
    $.post(
        "/myMessage.do",
        userId,
        function (data) {
            for (let i=0; i<data.length; i++){
                if (data[i].messageStatus === 0){
                    $("#noMsg1").html("");
                    let m = "<div class=\"media text-muted pt-3\"><svg class=\"bd-placeholder-img mr-2 rounded\" width=\"32\" height=\"32\" xmlns=\"http://www.w3.org/2000/svg\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\" role=\"img\" aria-label=\"Placeholder: 32x32\"><title>Placeholder</title><rect width=\"100%\" height=\"100%\" fill=\"#e83e8c\"/><text x=\"50%\" y=\"50%\" fill=\"#e83e8c\" dy=\".3em\">32x32</text></svg>" +
                        "            <div class=\"media-body pb-3 mb-0 small lh-125 border-bottom border-gray\">" +
                        "                        <div class=\"d-flex justify-content-between align-items-center w-100\">" +
                        "                            <strong class=\"text-gray-dark\">"+data[i].messageTitle+"</strong>" +
                        "                            <a href='read.do?messageId="+data[i].messageId+"'>朕已阅</a>" +
                        "                        </div>" +
                        "                        <span>"+data[i].messageContent+"</span>" +
                        "            </div></div>";
                    $("#unread").append(m);
                }
                if (data[i].messageStatus === 1){
                    $("#noMsg2").html("");
                    let m =  "<div class=\"media text-muted pt-3\"><svg class=\"bd-placeholder-img mr-2 rounded\" width=\"32\" height=\"32\" xmlns=\"http://www.w3.org/2000/svg\" preserveAspectRatio=\"xMidYMid slice\" focusable=\"false\" role=\"img\" aria-label=\"Placeholder: 32x32\"><title>Placeholder</title><rect width=\"100%\" height=\"100%\" fill=\"#007bff\"/><text x=\"50%\" y=\"50%\" fill=\"#007bff\" dy=\".3em\">32x32</text></svg>" +
                        "            <div class=\"media-body pb-3 mb-0 small lh-125 border-bottom border-gray\">" +
                        "                        <div class=\"d-flex justify-content-between align-items-center w-100\">" +
                        "                            <strong class=\"text-gray-dark\">"+data[i].messageTitle+"</strong>" +
                        "                            <a href='unNeed.do?messageId="+data[i].messageId+"'>删除</a>" +
                        "                        </div>" +
                        "                        <span>"+data[i].messageContent+"</span>" +
                        "            </div></div>";
                    $("#read").append(m)
                }
            }
        }
    );
    $("#allread").click(function () {
        location.href="allread.do?userId="+uid;
    });
});
