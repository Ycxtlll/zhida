/**
 * 分页方法
 * pno--页数
 * psize--每页显示记录数
 * 分页部分是从真实数据行开始，因而存在加减某个常数，以确定真正的记录数
 * 纯js分页实质是数据行全部加载，通过是否显示属性完成分页功能
 **/
function goPage(pno){
    const itable = document.getElementById("news_table");
    const num = itable.rows.length;//表格所有行数(所有记录数)
    // console.log(num);
    let totalPage = 0;//总页数
    const pageSize = 10;//每页显示行数
    //总共分几页
    if(num/pageSize > parseInt(num/pageSize)){
        totalPage=parseInt(num/pageSize)+1;
    }else{
        totalPage=parseInt(num/pageSize);
    }
    const currentPage = pno;//当前页数
    const startRow = (currentPage - 1) * pageSize + 1;//开始显示的行  31
    let endRow = currentPage * pageSize;//结束显示的行   40
    endRow = (endRow > num)? num : endRow;    //40
    // console.log(endRow);
    //遍历显示数据实现分页
    for(let i=1; i<(num+1); i++){
        const irow = itable.rows[i - 1];
        if(i>=startRow && i<=endRow){
            irow.style.display = "table-row";
        }else{
            irow.style.display = "none";
        }
    }
    const pageEnd = document.getElementById("pageEnd");
    let tempStr = "<span class='btn btn-outline-secondary disabled'>当前:" + currentPage + "页</span>";
// <span class='btn btn-outline-secondary disabled'>共" + totalPage + "页</span>

//.bind("click",{"newPage":pageIndex},function(event){
//        goPage((pageIndex-1)*pageSize+1,(pageIndex-1)*pageSize+pageSize);
//    }).appendTo('#pages');
    if(currentPage>1){
        tempStr += "<span class='btn btn-outline-warning' href=\"#\" onClick=\"goPage("+(1)+")\">首页</span>";
        tempStr += "<span class='btn btn-outline-success' href=\"#\" onClick=\"goPage("+(currentPage-1)+")\">上一页</span>"
    }else{
        tempStr += "<span class='btn btn-outline-warning'>首页</span>";
        tempStr += "<span class='btn btn-outline-success'>上一页</span>";
    }

    for(let pageIndex= 1; pageIndex<totalPage+1; pageIndex++){
        tempStr += "<a onclick=\"goPage("+pageIndex+")\"><span class='btn btn-outline-info'>"+ pageIndex +"</span></a>";
    }

    if(currentPage<totalPage){
        tempStr += "<span class='btn btn-outline-success' href=\"#\" onClick=\"goPage("+(currentPage+1)+")\">下一页</span>";
        tempStr += "<span class='btn btn-outline-warning' href=\"#\" onClick=\"goPage("+(totalPage)+")\">尾页</span>";
    }else{
        tempStr += "<span class='btn btn-outline-success'>下一页</span>";
        tempStr += "<span class='btn btn-outline-warning'>尾页</span>";
    }


    document.getElementById("newsPage").innerHTML = tempStr;

}
// 绘制表格
function toTable(data){
    for(let i=0;i<data.length;i++){
        $("<tr>" +
            "<td width='60%;' ><a style='color: black' href='"+data[i]["newsUrl"]+"'>"+data[i]["newsTitle"]+"</a></td>" +
            "<td width='40%;' class='text-right'>"+data[i]["releaseDate"]+"</td>" +
            "</tr>").appendTo("#news_table");
    }
}

function checkWidth(data){
    if ($(window).width() >= 450){
        $("#news_table").html(" ");
        toTable(data);
        goPage(1);
    }else {
        $("#news_table").html(" ");
        toTable(data);
    }
}

$(document).ready(function () {
    $("<tr>" +
        "<td width='60%;'>" +
        "<div class=\"spinner-border text-warning\" role=\"status\">\n" +
        "  <span class=\"sr-only\">Loading...</span>\n" +
        "</div>加载数据中，请稍后...（长时间未加载请刷新页面）</td>" +
        "</tr>").appendTo("#news_table");
    $.post(
        '/news.do',
        function (data) {
            if (data === "false"){
                location.reload();
            }else {
                checkWidth(data);
                // alert($(window).width());
            }
            // console.log(data);

        }
    );

    $("#searchNewsBtn").click(function () {
        let news_title = document.getElementById("searchNews").value;
        $.post(
            "/selectnews.do",
            {"news_title":news_title},
            function (data) {
                if (data === "false"){
                    $("#news_table").html("<h2>Not Found!</h2> ");
                }else {
                    checkWidth(data);
                }
            }
        )
    });

    $("#newsDateBtn").click(function () {
       let news_date = document.getElementById("newsDate").value;
        // console.log(news_date);
        $.post(
            "/selectnewsbydate.do",
            {"release_date":news_date},
            function (data) {
                if (data === "false"){
                    $("#news_table").html("<h2>Not Found!</h2> ");
                }else {
                    checkWidth(data);
                }
            }
        )
    });

});
