<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息管理</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">

</head>

<body onload="goPage(1)">

<div class="container">
<!-- body -->
	<header>
		<h1>后台信息管理页面
			<a class="btn btn-success" style="float: right;margin-top: 10px;"
			   href="/index"
			   onclick="return backIndex();">回到主页</a>
		</h1>
		<hr>
	</header>
	<div>
		<form class="form-inline" method="post" action="searchCourse.do">
			<input class="form-control" type="text" name="course_title" placeholder="请输入课程名称">
			<button class="btn btn-secondary" type="submit">搜索</button>
		</form>
		<br>
	</div>

	<div class="row">
		<div class="col-3">
			<div id="myTabs" class="nav nav-pills flex-column" role="tablist">
				<a class="nav-link " href="showUser.do" role="tab"  >用户信息</a>
				<a class="nav-link active" href="showCourse.do" role="tab" >课程信息</a>
				<a class="nav-link" href="showCourse_order.do" role="tab" >订单信息</a>
				<a class="nav-link" href="showGuide.do" role="tab" >指南信息</a>
				<a class="nav-link " href="showNews.do" role="tab" >新闻信息</a>
				<a class="nav-link " href="showFeedback.do" role="tab" >反馈信息</a>
				<a class="nav-link " href="showMessage.do" role="tab" >消息信息</a>
			</div>
		</div>
		<div class="col-9 ">
		
		<div>
			<table id="myTable" class="table table-hover">
				<thead>
				<tr>
					<th>ID</th>
					<th>类型</th>
					<th>标题</th>
					<th>教师姓名</th>
					<th>内容</th>
					<th>图片地址</th>
					<th>费用</th>
					<th>修改日期</th>
					<th>编辑</th>
				</tr>
				</thead>

				<c:forEach items="${courselist }" var="i" varStatus="cl">
				<tr>
					<td>${i.courseId }</td>
					<td>${i.courseType }</td>
					<td>${i.courseTitle }</td>
					<td>${i.courseTeacher }</td>
					<td>${i.courseContent }</td>
					<td>${i.pictureUrl }</td>
					<td>${i.courseCost }</td>
					<td>${i.modifiedTime }</td>
					<td>
						<a class="btn btn-secondary" href="editCourse.do?course_id=${i.courseId}">修改</a>
						<a class="btn btn-danger" href="deleteCourse.do?course_id=${i.courseId}" onclick="return deleteOne();">删除</a>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
		
		<div id="barcon" name="barcon"></div>
		
	</div>
<!-- body end -->
</div>
</div>
	<footer style="bottom: 0px;margin-left: 30%;">
		<!--    备案信息-->
		<div style="margin:0 auto; padding:20px 0;">
			<p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">
				<a href="/about" style="color: gray;">&copy; 2017-2020 职达面试 </a>&middot; 备案/许可证编号：津ICP备19009021号 &middot;
			</p>
			<a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=12022302000551" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
				<img src="${pageContext.request.contextPath}/static/image/beian.png" style="float:left;"/>
				<p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">
					津公网安备 12022302000551号
				</p>
			</a>
		</div>
	</footer>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/JSP_all.js"></script>

</html>
