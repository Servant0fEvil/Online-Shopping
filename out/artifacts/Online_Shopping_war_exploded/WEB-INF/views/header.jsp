<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 20/08/2020
  Time: 12:21 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>${pageTitle}</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.selectBox.css"/>
    <link rel="shortcut icon" href="favicon.html"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=EB+Garamond&display=swap" rel="stylesheet">
</head>
<!--[if lt IE 7 ]> <body class="ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie7"> <![endif]-->
<!--[if IE 8 ]> <body class="ie8"> <![endif]-->
<!--[if IE 9 ]> <body class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body> <!--<![endif]-->

<!-- START of HEADER WRAPPER -->
<div class="header-wrapper">
    <div id="header" class="clearfix">

        <!-- LOGO -->
        <a href="/trang-chu" class="logo"><img
                src="https://png.pngtree.com/png-clipart/20190904/original/pngtree-red-shopping-cart-icon-png-free-illustration-png-image_4480557.jpg"
                alt="BonFire Logo"/></a>

        <!-- SLOGAN LINE -->
        <strong class="slogan">Mua sắm cùng bạn</strong>

        <!-- TOP NAV -->
        <ul class="top-nav">
            <!--                    		<li><a href="#">WISH LIST (0)</a></li>-->
            <li><a href="/dang-nhap">ĐĂNG NHẬP</a></li>
            <li><a href="/dang-ky">ĐĂNG KÝ</a></li>
            <li><a href="/gio-hang">GIỎ HÀNG</a></li>

            <li><a href="#" class="cart">&nbsp;</a><span class="cart-bubble">0</span></li>
        </ul><!-- end of .top-nav -->

    </div><!-- end of #header -->

</div>
<!-- END OF HEADER WRAPPER -->
