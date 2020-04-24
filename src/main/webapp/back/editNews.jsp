<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新闻信息编辑</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">

</head>
<body class="container">
<h1>信息编辑页面</h1><hr>
<form action="editNews.do" method="post">
	<table class="table table-hover">
		<tr>
			<td>ID</td>
			<td>${newslist.newsId }</td>
			<td><input type="hidden" value="${newslist.newsId }" name="newsId"></td>
		</tr>
		<tr>
			<td>新闻标题</td>
			<td><input class="form-control" type="text" value="${newslist.newsTitle }" name="newsTitle"></td>
		</tr>
		<tr>
			<td>发布日期</td>
			<td><input class="form-control" type="text" value="${newslist.releaseDate }" name="releaseDate"></td>
		</tr>
		<tr>
			<td>内容地址</td>
			<td><input class="form-control" type="text" value="${newslist.newsUrl }" name="newsUrl"></td>
		</tr>
		<tr>
			<td></td>
			<td><input class="btn btn-secondary" type="reset" value="重置"  >
				<input class="btn btn-secondary" type="submit" value="提交" >
			</td>
		</tr>
	</table>
</form>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</html>