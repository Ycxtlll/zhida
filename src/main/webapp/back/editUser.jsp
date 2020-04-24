<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户信息编辑</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">

</head>
<body class="container">
<h1>信息编辑页面</h1><hr>
<form action="editUser.do" method="post">
	<table class="table table-hover">
		<tr>
			<td>用户ID</td>
			<td>${userlist.userId }</td>
			<td><input type="hidden" value="${userlist.userId }" name="userId"></td>
		</tr>
		<tr>
			<td>用户昵称</td>
			<td><input class="form-control" type="text" value="${userlist.userLoginName }" name="userLoginName"></td>
		</tr>
		<tr>
			<td>用户密码</td>
			<td><input class="form-control" type="text" value="${userlist.userPassword }" name="userPassword"></td>
		</tr>
		<tr>
			<td>用户姓名</td>
			<td><input class="form-control" type="text" value="${userlist.userName }" name="userName"></td>
		</tr>
		<tr>
			<td>电话号码</td>
			<td><input class="form-control" type="text" value="${userlist.userPhone }" name="userPhone"></td>
		</tr>
		<tr>
			<td>用户邮箱</td>
			<td><input class="form-control" type="text" value="${userlist.userEmail }" name="userEmail"></td>
		</tr>
		<tr>
			<td>用户状态</td>
			<td><input class="form-control" type="text" value="${userlist.userStatus }" name="userStatus"></td>
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