
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>职达面试</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <script src="/static/js/jquery-3.4.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <style>
        main{
            height: 500px;
            width: 1000px;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .pp{
            margin-top: -10%;
        }
    </style>
</head>
<body>
<main class="shadow row">
    <div style="margin-left: 50px;">
        <embed src="/static/image/notfound/empty.svg" width="500px" height="500px">
    </div>
    <div class=" text-center " style="margin-left: 9%">
        <embed src="/static/image/notfound/page_not_found.svg" width="300px" height="300px">
        <p class="pp"> <h3> Oops! </h3> The page you want to visit is not found!</p><br>
        <a class="btn btn-outline-primary" href="/">返回主页</a>
    </div>
</main>
</body>
</html>
