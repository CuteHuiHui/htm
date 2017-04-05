<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<base href="${deployName }">
<title>幻听-原创音乐网站</title>
<link rel="shortcut icon" type="image/icon" href="images/log.png" />
<link rel="stylesheet" type="text/css" href="css/friend.css" />
<link rel="stylesheet" href="dist/css/bootstrap.css">
<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<div class="big_box"></div>
	<div id="head">
		<nav class="navbar navbar-default" id="lognav">
			<div class="container">
				<div class="navbar-header navbar-left">
					<a href="" class="navbar-brand"><img src="images/log.png"></a>
					<a href="" class="navbar-brand"><h3>幻听音乐</h3></a>
				</div>
				<ul class="nav navbar-nav navbar-right" id="nav_a">
					<li><a href="javascript:void(0)"
						class="hidden-md hidden-sm hidden-xs" id="denglu"
						data-toggle="modal" data-target="#myModal">登录</a></li>
					<li id="newL"><a href="javascript:void(0)"
						class="hidden-md hidden-sm hidden-xs" id="out" data-toggle="modal"
						data-target="#myModals">注册</a></li>
				</ul>
			</div>
		</nav>
		<nav class="navbar navbar-default" id="navbartop">
			<div class="container">
				<div class="row">
					<ul class="nav navbar-nav navbar-left" id="topnav">
						<li><div class="mydiv hidden-md hidden-sm hidden-xs"></div> <a
							href="page/index.jsp"
							class="col-lg-2 col-md-2 col-sm-3 col-xs-4" id="">首页</a></li>
						<li><a href="page/singer.jsp"
							class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
						<li><a href="page/special.jsp"
							class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
						<li><a href="page/mv.jsp"
							class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
						<li><a href="page/friend.jsp"
							class="col-lg-2 hidden-md hidden-sm hidden-xs">朋友</a></li>

					</ul>
				</div>
			</div>
		</nav>
	</div>
	<article>

		<div class="container friend">

			<input type="text" id="content" class="form-control"
				placeholder="说点什么吧" />
			<p>
				<button class="btn btn-primary" onclick="addfb()" id="ok">发表</button>
				<span class="add_img"><input class="myfile" type="file"
					accept="image/gif, image/jpeg" /></span>
			</p>
			<p class="news">动态</p>
			<div class="content">
				<div class="con">
				<div class="con_0 hidden-md hidden-sm hidden-xs"><img class="user_icon" src="images/user.jpg"></div>
				<div class="con_1"><span>用户xx</span>：</div>
				<div class="con_2">2016-11-11 11:11</div>
				<div class="con_3">我发表了一段文字。。</div>
				<div class="con_4"><img src="images/大图2.jpg"/></div>
				</div>
				<div class="con">
				<div class="con_0 hidden-md hidden-sm hidden-xs"><img class="user_icon" src="images/user.jpg"></div>
				<div class="con_1"><span>用户xx</span>：</div>
				<div class="con_2">2016-11-11 11:11</div>
				<div class="con_3">我发表了一段文字。。</div>
				<div class="con_4"><img src="images/大图2.jpg"/></div>
				</div>
				<div class="con">
				<div class="con_0 hidden-md hidden-sm hidden-xs"><img class="user_icon" src="images/user.jpg"></div>
				<div class="con_1"><span>用户xx</span>：</div>
				<div class="con_2">2016-11-11 11:11</div>
				<div class="con_3">我发表了一段文字。。</div>
				<div class="con_4"><img src="images/大图2.jpg"/></div>
				</div>

			</div>
		</div>
		<p id="mymore" onclick="showMoreArticle()">更多动态</p>
	</article>
	<footer>
		<div class="container-fluid" id="myfooter">
			<div class="container" id="footer_content">
				<div class="row" id="myrow">
					<span class="col-lg-3 col-md-3 col-sm-3 col-xs-3">关于我们</span> <span
						class="col-lg-3 col-md-3 col-sm-3 col-xs-3">幻听服务</span> <span
						class="col-lg-3 col-md-3 col-sm-3 col-xs-3">联系我们</span> <span
						class="col-lg-3 col-md-3 col-sm-3 col-xs-3">招商合作</span>
				</div>
				<p>幻听-原创音乐网站-版权所有 ©</p>
			</div>
		</div>
	</footer>

	<div>
		<div id="mylogin">
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" id="admin">
					<div class="login">
						<div class="login_top">
							<p>登录幻听</p>
							<div class="login_close" data-dismiss="modal"></div>
						</div>
						<div class="login_content">
							<form>
								<input type="text" id="uname" placeholder="请输入您的用户名" /><br /> <input
									type="text" id="pwd" placeholder="请输入您的密码" /><br />
								<button id="go">登录</button>
							</form>
						</div>
						<div class="login_bottom"></div>
					</div>
				</div>
			</div>
		</div>

		<div id="myreg">
			<div class="modal fade" id="myModals" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" id="regs">
					<div class="regs">
						<div class="reg_top">
							<p>注册用户</p>
							<div class="reg_close" data-dismiss="modal"></div>
						</div>
						<div class="reg_content">
							<form>
								<input type="text" id="newname" placeholder="设置我的账户名" /><br /> <input
									type="text" id="newpwd" placeholder="请设置我的密码" /><br /> <input
									type="email" id="email" placeholder="您的邮箱账户" /><br /> <input
									type="text" id="txt" placeholder="请输入您收到的验证码" /><br />
								<button id="new">马上注册</button>
							</form>
						</div>
						<div class="reg_bottom"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</body>
</html>