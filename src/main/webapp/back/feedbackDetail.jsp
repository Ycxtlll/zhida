
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>反馈详情</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
</head>
<body class="container">
<h1>信息反馈详情</h1><hr>
    <table class="table table-hover">
        <tr>
            <td>FeedbackID</td>
            <td>${feedback.feedbackId}</td>
            <td><input type="hidden" value="${feedback.feedbackId}" name="feedbackId"></td>
        </tr>
        <tr>
            <td>UserID</td>
            <td>${feedback.userId}</td>
        </tr>
        <tr>
            <td>联系方式</td>
            <td>${feedback.contactInfo}</td>
        </tr>
        <tr>
            <td>留言详情</td>
            <td><textarea class="form-control" readonly rows="4">${feedback.feedbackContent}</textarea></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="showFeedback.do" class="btn btn-info">返回</a>
            </td>
        </tr>
    </table>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</html>
