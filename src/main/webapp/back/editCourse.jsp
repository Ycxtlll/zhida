<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>课程信息编辑</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">

</head>
<body class="container">
<h1>信息编辑页面</h1><hr>
<form action="editCourse.do" method="post">
	<table class="table table-hover">
		<tr>
			<td>课程ID</td>
			<td>${courselist.courseId }</td>
			<td><input type="hidden" value="${courselist.courseId }" name="courseId"></td>
		</tr>
		<tr>
			<td>课程状态</td>
			<td><input class="form-control" type="text" value="${courselist.courseType }" name="courseType"></td>
		</tr>
		<tr>
			<td>课程标题</td>
			<td><input class="form-control" type="text" value="${courselist.courseTitle }" name="courseTitle"></td>
		</tr>
		<tr>
			<td>任课教师</td>
			<td><input class="form-control" type="text" value="${courselist.courseTeacher }" name="courseTeacher"></td>
		</tr>
		<tr>
			<td>课程内容</td>
			<td><input class="form-control" type="text" value="${courselist.courseContent }" name="courseContent"></td>
		</tr>
		<tr>
			<td>课程费用</td>
			<td><input class="form-control" type="text" value="${courselist.courseCost }" name="courseCost"></td>
		</tr>
		<tr>
			<td>图片链接</td>
			<td><input class="form-control" type="text" value="${courselist.pictureUrl }" name="pictureUrl"></td>
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