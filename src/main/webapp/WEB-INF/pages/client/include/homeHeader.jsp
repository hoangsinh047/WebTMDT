<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link href="Frontend/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link
			href='//fonts.googleapis.com/css?family=Londrina+Solid|Coda+Caption:800|Open+Sans'
			rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="Frontend/css/responsiveslides.css">
	<script src="Frontend/js/jquery.min.js"></script>
	<script src="Frontend/js/responsiveslides.min.js"></script>
	<script src="js/client/accounting.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 1
			$("#slider1").responsiveSlides({
				maxwidth: 1600,
				speed: 600
			});
		});
	</script>
</head>
<body>
<div class="wrap">
	<!----start-Header---->
	<div class="header row" style="display: flex; align-items: center; ">
		<!----start-logo---->
		<div class="col-md-2">
			<img src="Frontend/img/logo.jpg" title="logo" class="img-fluid"/>
		</div>
		<!----end-logo---->
		<div class="search-bar col-md-7">
			<form action="/laptopshop/search">
				<input type="text" name="name"><input type="submit" value="Search" />
			</form>
		</div>
		<div class="header-top-nav col-md-3">
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<ul>
					<li>Xin chào: ${loggedInUser.hoTen}</li>
					<!-- 	<li><a href="<%=request.getContextPath()%>/checkout"">Thanh toán</a></li> -->
					<li><a href="<%=request.getContextPath()%>/account">Tài khoản</a>
					</li>
					<li><a href="<%=request.getContextPath()%>/cart"><span>Giỏ hàng&nbsp;&nbsp;: </span></a><span
							class="glyphicon glyphicon-shopping-cart"></span>
					</li>
					<li><a href="<%=request.getContextPath()%>/logout"> Đăng xuất</a>
					</li>
				</ul>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name == null}">
				<ul>
					<li><a href="<%=request.getContextPath()%>/register">Đăng
						kí</a>
					</li>
					<li><a href="<%=request.getContextPath()%>/login">Đăng
						nhập</a>
					</li>
					<li><a href="<%=request.getContextPath()%>/cart"> <span>Giỏ hàng&nbsp;&nbsp;&nbsp;</span></a><span
							class="glyphicon glyphicon-shopping-cart"></span></li>
				</ul>
			</c:if>
		</div>
 	</div>
</div>
<div class="clear"></div>
<div class="top-header">
	<div class="wrap d-flex">
		<!----start-top-nav---->
		<div class="top-nav">
			<ul>
				<li><a href="<%=request.getContextPath()%>/" style="text-decoration: none">Trang chủ</a></li>

				<li><a href="<%=request.getContextPath()%>/shipping" style="text-decoration: none">Miễn
					phí vận chuyển</a>
				</li>
				<li><a href="<%=request.getContextPath()%>/guarantee" style="text-decoration: none">Bảo
					hành tận nơi</a>
				</li>
				<li><a href="<%=request.getContextPath()%>/contact" style="text-decoration: none">Liên hệ</a></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
</div>
<!----End-top-nav---->
<!----End-Header---->
<script src="<c:url value='/js/client/header.js'/>" ></script>