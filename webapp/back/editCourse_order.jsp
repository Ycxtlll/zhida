<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>课程信息编辑</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">

</head>
<body class="container">
<h1>信息编辑页面</h1><hr>
<form action="editCourse_order.do" method="post">
	<table class="table table-hover">
		<tr>
			<td>订单ID</td>
			<td>${course_orderlist.orderId }</td>
			<td><input type="hidden" value="${course_orderlist.orderId }" name="orderId"></td>
		</tr>
		<tr>
			<td>课程ID</td>
			<td><input class="form-control" type="text" value="${course_orderlist.courseId }" name="courseId"></td>
		</tr>
		<tr>
			<td>用户ID</td>
			<td><input class="form-control" type="text" value="${course_orderlist.userId }" name="userId"></td>
		</tr>
		<tr>
			<td>课程标题</td>
			<td><input class="form-control" type="text" value="${course_orderlist.courseTitle }" name="courseTitle"></td>
		</tr>
		<tr>
			<td>课程费用</td>
			<td><input class="form-control" type="text" value="${course_orderlist.payCost }" name="payCost"></td>
		</tr>
		<tr>
			<td>付费时间</td>
			<td><input class="form-control" type="text" value="${course_orderlist.payTime }" name="payTime"></td>
		</tr>
		<tr>
			<td>图片链接</td>
			<td><input class="form-control" type="text" value="${course_orderlist.pictureUrl }" name="pictureUrl"></td>
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