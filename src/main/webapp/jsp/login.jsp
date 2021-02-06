<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title> HR医院人事管理系统 - 登录</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<!--[if lt IE 9]>
	<meta http-equiv="refresh" content="0;ie.html" />
	<![endif]-->
	<link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=path %>/css/font-awesome.css?v=4.4.0" rel="stylesheet">
	<link href="<%=path %>/css/animate.css" rel="stylesheet">
	<link href="<%=path %>/css/style.css" rel="stylesheet">
	<link href="<%=path %>/css/login.css" rel="stylesheet">
	<!-- 全局js -->
	<script src="<%=path %>/js/jquery.min.js?v=2.1.4"></script>
	<script src="<%=path %>/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="<%=path %>/js/plugins/jeditable/jquery.jeditable.js"></script>
	<script>
		$(function () {
			//添加加载该页面时，无论什么情况都处于顶层窗口
			if(window.top!=window){
				window.top.location=window.location;
			}

			//加载页面后清空文本框的值
			$("#loginAct").val("");

			//加载页面后，光标显示在用户框中
			$("#loginAct").focus();

			/*//为登录提交按钮设置点击提交时间
			$("#submitBtn").click(function () {
				//执行登录操作
				login();
			})

			//绑定键盘点击事件，用于判断是否使用回车键提交登录
			$(window).keydown(function (event) {
				//判断event参数获取的键盘的码值是否为回车键码值13
				if(event.keyCode==13){
					//执行提交登录操作
					login();
				}
			})*/
		})

	</script>
</head>
<body class="signin">
	<div class="signinpanel">
		<div>
			<h2 style="font-family: Verdana;color: black;text-align: center">
				<b>医院人事管理系统</b>
			</h2>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<form method="post" action="<%=path %>/employee/checkLogin.do">
					<h4 class="no-margins">
						<font color="#6C6C6C">登录：</font>
					</h4>
					<input type="text" class="form-control uname" placeholder="用户名" name="employeeNumber" id="loginAct"/>
					<input type="password" class="form-control pword m-b" placeholder="密码" name="password" id="loginPwd"/>
					<p></p>
					<div class="checkbox"  style="position: relative;top: 5px; left: 10px;">
						<span id="msg" style="color: #ff0000"></span>
					</div>
					<button class="btn btn-success btn-block" type="submit">登录</button>
				</form>
			</div>
		</div>
	</div>
</body>

</html>
