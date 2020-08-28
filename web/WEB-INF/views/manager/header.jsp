<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags-->

    <!-- Title Page-->
    <title>Quản lý</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <!------ Include the above in your HEAD tag ---------->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <!-- Fontfaces CSS-->
    <link href="${pageContext.request.contextPath}/css/font-face.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/css2.css" rel="stylesheet">

    <!-- Bootstrap CSS-->
    <link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet">

    <!-- Main CSS-->
    <link href="${pageContext.request.contextPath}/css/theme.css" rel="stylesheet">
</head>
<body class="animsition">
<div class="page-wrapper">
    <aside class="menu-sidebar d-none d-lg-block">
        <div class="logo">
            <h1>
                ADMIN
            </h1>
        </div>

        <div class="menu-sidebar__content js-scrollbar1">
            <nav class="navbar-sidebar">
                <ul class="list-unstyled navbar__list">

                    <li <c:if test="${active == 'quan-li-quan-tri-vien'}">class="active"</c:if>>

                        <a href="/managers/admin-manager">
                            <i class="zmdi zmdi-account "></i>Quản lý quản trị viên
                        </a>
                    </li>

                    <li <c:if test="${active == 'quan-li-nhan-vien'}">class="active"</c:if>>
                        <a href="/managers/staff-manager">
                            <i class="zmdi zmdi-account-o"></i>Quản lý nhân viên
                        </a>
                    </li>

                    <li <c:if test="${active == 'quan-li-thanh-vien'}">class="active"</c:if>>
                        <a href="/managers/member-manager">
                            <i class="zmdi zmdi-male-female"></i>Quản lý thành viên
                        </a>
                    </li>

                    <li <c:if test="${active == 'quan-li-tin-tuc'}">class="active"</c:if>>
                        <a href="/managers/news-manager">
                            <i class="zmdi zmdi-notifications-active"></i>Quản lý tin tức
                        </a>
                    </li>

                    <li <c:if test="${active == 'quan-li-nha-cung-cap'}">class="active"</c:if>>
                        <a href="/managers/supplier-manager">
                            <i class="zmdi zmdi-store"></i>Quản nhà cung cấp
                        </a>
                    </li>

                    <li <c:if test="${active == 'quan-li-nganh-hang'}">class="active"</c:if>>
                        <a href="/managers/category-manager">
                            <i class="zmdi zmdi-view-compact"></i>Quản lý ngành hàng
                        </a>
                    </li>

                    <li <c:if test="${active == 'quan-li-loai-hang'}"> class="active" </c:if>>
                        <a href="/managers/type-manager">
                            <i class="zmdi zmdi-view-headline"> </i>Quản lý loại hàng
                        </a>
                    </li>

                    <li <c:if test="${active == 'quan-li-hang-hoa'}">class="active"</c:if>>
                        <a href="/managers/product-manager">
                            <i class="zmdi zmdi-shopping-cart"></i>Quản lý hàng hóa
                        </a>
                    </li>

                    <li <c:if test="${active == 'quan-li-don-hang'}">class="active"</c:if>>
                        <a href="/managers/bill-manager">
                            <i class="zmdi zmdi-assignment"></i>Quản lý đơn hàng
                        </a>
                    </li>

                    <li <c:if test="${active == 'quan-li-phan-hoi'}">class="active"</c:if>>
                        <a href="/managers/feedback-manager">
                            <i class="zmdi zmdi-comments"></i>Quản lý phản hồi
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>
    <!-- END MENU SIDEBAR-->
    <!-- PAGE CONTAINER-->
    <div class="page-container">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="header-wrap">
                        <form class="form-header" action="" method="POST">
                            <input class="au-input au-input--xl" type="text" name="search"
                                   placeholder="Search for datas &amp; reports..."/>
                            <button class="au-btn--submit" type="submit">
                                <i class="zmdi zmdi-search"></i>
                            </button>
                        </form>
                        <div class="header-button">
                            <div class="noti-wrap">
                                <div class="noti__item js-item-menu">
                                    <i class="zmdi zmdi-notifications-active"></i>
                                    <span class="quantity">3</span>
                                    <div class="email-dropdown js-dropdown">
                                        <div class="email__title">
                                            <p>Có 3 hoạt động mới</p>
                                        </div>
                                        <div class="email__item">
                                            <div class="image img-cir img-40">
                                                <img src="${pageContext.request.contextPath}/image/avatar-06.png"
                                                     alt="Trần thanh nghĩa"/>
                                            </div>
                                            <div class="content">
                                                <p>Đã thêm hàng hóa mới</p>
                                                <span>3 phút trước</span>
                                            </div>
                                        </div>
                                        <div class="email__item">
                                            <div class="image img-cir img-40">
                                                <img src="${pageContext.request.contextPath}/image/avatar-05.png"
                                                     alt="Nguyễn trọng nam"/>
                                            </div>
                                            <div class="content">
                                                <p>Đã xóa hàng hóa</p>
                                                <span>15h,hôm qua</span>
                                            </div>
                                        </div>
                                        <div class="email__item">
                                            <div class="image img-cir img-40">
                                                <img src="${pageContext.request.contextPath}/image/avatar-04.png"
                                                     alt="Hoàng văn nam"/>
                                            </div>
                                            <div class="content">
                                                <p>Đã thêm tin tức</p>
                                                <span>22h,12/7/2020</span>
                                            </div>
                                        </div>
                                        <div class="email__footer">
                                            <a href="#">Xem tất cả thông báo</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="${pageContext.request.contextPath}/image/avatar-01.png"
                                                 alt="John Doe"/>
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Admin</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="${pageContext.request.contextPath}/image/avatar-01.png"
                                                             alt="admin "/>
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">admin</a>
                                                    </h5>
                                                    <span class="email">Quản trị viên</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a onclick="thongtintaikhoan()" href="#">
                                                        <i class="zmdi zmdi-account"></i>Thông tin tài khoản
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="#">
                                                    <i class="zmdi zmdi-power"></i>Đăng xuất</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </header>

        <dialog id="thongtincanhan">
            <div class="container">
                <h1>Thêm mới</h1>
                <hr>
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-3">
                        <div class="text-center">
                            <img src="${pageContext.request.contextPath}/image/avatar-01.png" alt="avatar">
                            <h6>Ảnh đại diện</h6>
                            <input type="file" class="form-control">
                        </div>
                    </div>

                    <!-- edit form column -->
                    <div class="col-md-9 personal-info">


                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Tài khoản:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="ADMIN_1">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Mật khẩu:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="password" value="123456">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Nhập lại mật khẩu:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="password" value="123456">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Họ và tên:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="Nguyễn Thanh Bình">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Địa chỉ:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="Thanh xuân, Hà nội">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Giới tính:</label>
                                <div class="col-lg-8">
                                    <div class="ui-select">
                                        <select id="gioitinh" class="form-control">
                                            <option value="Nam">Nam</option>
                                            <option value="Nu">Nữ</option>
                                            <option value="ca2">Cả 2</option>

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Email:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="email" value="ABCD@gmail.com">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>
                                <div class="col-md-8">

                                    <button class="btn btn-primary">Lưu</button>

                                    <button class="btn btn-primary">Hủy</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </dialog>
        <script src="/js/animsition.min.js"></script>
        <script src="/js/chucnang.js"></script>
        <script src="/js/main.js"></script>