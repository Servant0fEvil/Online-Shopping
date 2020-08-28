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
    <link href="/css/font-face.css" rel="stylesheet">
    <link href="/css/css2.css" rel="stylesheet">

    <!-- Bootstrap CSS-->
    <link href="/css/css.css" rel="stylesheet">

    <!-- Main CSS-->
    <link href="/css/theme.css" rel="stylesheet">
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

                    <li
                    >

                        <a href="/managers/admin-manager">
                            <i class="zmdi zmdi-account "></i> Quản lý quản trị </a>
                    </li>

                    <li>
                        <a href="/managers/staff-manager">
                            <i class="zmdi zmdi-account-o"></i>Quản lý nhân viên
                        </a>
                    </li>

                    <li>
                        <a href="/managers/member-manager">
                            <i class="zmdi zmdi-male-female"></i> Quản lý thành viên
                        </a>

                    </li>
                    <li>
                        <a href="/managers/news-manager">
                            <i class="zmdi zmdi-notifications-active"></i>Quản lý tin tức</a>
                    </li>

                    <li>

                        <a href="/managers/supplier-manager">
                            <i class="zmdi zmdi-store"></i>Quản nhà cung cấp

                        </a>
                    </li>


                    <li>
                        <a href="/managers/category-manager"> <i class="zmdi zmdi-view-compact"> </i> Quản lý ngành hàng</a>
                    </li>
                    <li>
                        <a href="/managers/type-manager"><i class="zmdi zmdi-view-headline"> </i> Quản lý loại hàng</a>
                    </li>


                    <li class="active">
                        <a href="/managers/product-manager">
                            <i class="zmdi zmdi-shopping-cart"></i>Quản lý hàng hóa</a>
                    </li>
                    <li>
                        <a href="/managers/bill-manager">
                            <i class="zmdi zmdi-assignment   "></i>Quản lý đơn hàng</a>
                    </li>
                    <li>
                        <a href="/managers/feedback-manager">
                            <i class="zmdi zmdi-comments"></i>Quản lý phản hồi</a>
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
                                                <img src="images/avatar-06.png" alt="Trần thanh nghĩa"/>
                                            </div>
                                            <div class="content">
                                                <p>Đã thêm hàng hóa mới</p>
                                                <span>3 phút trước</span>
                                            </div>
                                        </div>
                                        <div class="email__item">
                                            <div class="image img-cir img-40">
                                                <img src="images/avatar-05.png" alt="Nguyễn trọng nam"/>
                                            </div>
                                            <div class="content">
                                                <p>Đã xóa hàng hóa</p>
                                                <span>15h,hôm qua</span>
                                            </div>
                                        </div>
                                        <div class="email__item">
                                            <div class="image img-cir img-40">
                                                <img src="images/avatar-04.png" alt="Hoàng văn nam"/>
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
                                            <img src="images/avatar-01.png" alt="John Doe"/>
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Admin</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="images/avatar-01.png" alt="admin "/>
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
                                                        <i class="zmdi zmdi-account"></i>Thông tin tài khoản</a>
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
                            <img src="images/avatar-01.png" alt="avatar">
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


        <!-- MAIN CONTENT-->
        <div class="main-content">
            <div class="section__content section__content--p30">
                <div class="container-fluid">

                    <div class="container">
                        <div class="row">


                            <div class="col-md-12">
                                <h1>Bảng tra cứu hàng hóa</h1>
                                <div class="table-responsive">
                                    <button onclick="themmoi()" id="themmoi"
                                            class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <i class="zmdi zmdi-plus"></i>Thêm mới
                                    </button>


                                    <table id="mytable" class="table table-bordred table-striped">

                                        <thead>

                                        <th>Mã</th>
                                        <th>Hình ảnh</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Giá sản phẩm</th>
                                        <th>Tên ngành hàng</th>
                                        <th>Tên loại hàng</th>
                                        <th>Trạng thái hoạt động</th>
                                        <th>Chỉnh sửa</th>
                                        <th>Xóa</th>
                                        <th>Xác nhận</th>
                                        </thead>
                                        <tbody>

                                        <tr>
                                            <td>001</td>
                                            <td><img
                                                    src="https://images.samsung.com/is/image/samsung/vn-uhd-nu7090-ua43nu7090kxxv-frontblack-108921413?$PD_GALLERY_L_JPG$">
                                            </td>
                                            <td>Smart TV 4k</td>
                                            <td>10.000.000</td>
                                            <td>TV</td>
                                            <td>Thiết bị điện tử</td>
                                            <td><select>
                                                <option>Hoạt động</option>
                                                <option>Không hoạt động</option>
                                            </select></td>
                                            <td>
                                                <p onclick="chinhsua()">
                                                    <button class="btn btn-primary btn-xs" data-title="Chỉnh sửa"
                                                            data-toggle="modal" data-target="#edit"><span
                                                            class="glyphicon glyphicon-pencil"></span></button>
                                                </p>
                                            </td>
                                            <td>
                                                <button onclick="xoa()" class="btn btn-danger btn-xs"
                                                        data-title="Delete"
                                                        data-toggle="modal" data-target="#delete"><span
                                                        class="glyphicon glyphicon-trash"></span></button>
                                            </td>
                                            <td>
                                                <button onclick="xacnhan()" class="btn au-btn--green  btn-xs"
                                                        data-title="Confirm" data-toggle="modal" data-target="#confirm"><span
                                                        class="glyphicon glyphicon-check"></span></button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>002</td>
                                            <td><img
                                                    src="https://images-na.ssl-images-amazon.com/images/I/71Y1GnUpW3L.__AC_SY300_QL70_ML2_.jpg">
                                            </td>
                                            <td>LG gram Laptop</td>
                                            <td>15.000.000</td>
                                            <td>laptop</td>
                                            <td>Thiết bị điện tử</td>
                                            <td><select>
                                                <option>Hoạt động</option>
                                                <option>Không hoạt động</option>
                                            </select></td>
                                            <td>
                                                <p onclick="chinhsua()">
                                                    <button class="btn btn-primary btn-xs" data-title="Chỉnh sửa"
                                                            data-toggle="modal" data-target="#edit"><span
                                                            class="glyphicon glyphicon-pencil"></span></button>
                                                </p>
                                            </td>
                                            <td>
                                                <button onclick="xoa()" class="btn btn-danger btn-xs"
                                                        data-title="Delete"
                                                        data-toggle="modal" data-target="#delete"><span
                                                        class="glyphicon glyphicon-trash"></span></button>
                                            </td>
                                            <td>
                                                <button onclick="xacnhan()" class="btn au-btn--green  btn-xs"
                                                        data-title="Confirm" data-toggle="modal" data-target="#confirm"><span
                                                        class="glyphicon glyphicon-check"></span></button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>003</td>
                                            <td><img
                                                    src="https://images.fpt.shop/unsafe/fit-in/840x472/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2019/11/19/637097817871944153_macbook-pro-16-1.JPG">
                                            </td>
                                            <td>MacBook Pro</td>
                                            <td>69.000.000</td>
                                            <td>laptop</td>
                                            <td>Thiết bị điện tử</td>
                                            <td><select>
                                                <option>Hoạt động</option>
                                                <option>Không hoạt động</option>
                                            </select></td>
                                            <td>
                                                <p onclick="chinhsua()">
                                                    <button class="btn btn-primary btn-xs" data-title="Chỉnh sửa"
                                                            data-toggle="modal" data-target="#edit"><span
                                                            class="glyphicon glyphicon-pencil"></span></button>
                                                </p>
                                            </td>
                                            <td>
                                                <button onclick="xoa()" class="btn btn-danger btn-xs"
                                                        data-title="Delete"
                                                        data-toggle="modal" data-target="#delete"><span
                                                        class="glyphicon glyphicon-trash"></span></button>
                                            </td>
                                            <td>
                                                <button onclick="xacnhan()" class="btn au-btn--green  btn-xs"
                                                        data-title="Confirm" data-toggle="modal" data-target="#confirm"><span
                                                        class="glyphicon glyphicon-check"></span></button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>004</td>
                                            <td><img
                                                    src="https://cdn.tgdd.vn/Products/Images/42/200533/iphone-11-pro-max-green-600x600.jpg">
                                            </td>
                                            <td>iPhone 11 Pro Max</td>
                                            <td>33.990.000</td>
                                            <td>Điện thoại di động</td>
                                            <td>Thiết bị điện tử</td>
                                            <td><select>
                                                <option>Hoạt động</option>
                                                <option>Không hoạt động</option>
                                            </select></td>
                                            <td>
                                                <p onclick="chinhsua()">
                                                    <button class="btn btn-primary btn-xs" data-title="Chỉnh sửa"
                                                            data-toggle="modal" data-target="#edit"><span
                                                            class="glyphicon glyphicon-pencil"></span></button>
                                                </p>
                                            </td>
                                            <td>
                                                <button onclick="xoa()" class="btn btn-danger btn-xs"
                                                        data-title="Delete"
                                                        data-toggle="modal" data-target="#delete"><span
                                                        class="glyphicon glyphicon-trash"></span></button>
                                            </td>
                                            <td>
                                                <button onclick="xacnhan()" class="btn au-btn--green  btn-xs"
                                                        data-title="Confirm" data-toggle="modal" data-target="#confirm"><span
                                                        class="glyphicon glyphicon-check"></span></button>
                                            </td>

                                        </tr>


                                        </tbody>

                                    </table>

                                    <div class="clearfix"></div>
                                    <ul class="pagination pull-right">
                                        <li class="disabled"><a href="#"><span
                                                class="glyphicon glyphicon-chevron-left"></span></a>
                                        </li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
                                    </ul>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- END MAIN CONTENT-->

        <dialog id="favDialog_themmoi">
            <div class="container">
                <h1>Thêm mới</h1>
                <hr>
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-3">
                        <div class="text-center">
                            <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                            <h6>Ảnh đại diện</h6>

                            <input type="file" class="form-control">
                        </div>
                    </div>

                    <!-- edit form column -->
                    <div class="col-md-9 personal-info">


                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Tên sản phẩm:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Giá sản phẩm:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value=" ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Chọn nhà cung cấp:</label>
                                <div class="col-lg-8">
                                    <div class="ui-select">
                                        <select class="form-control">
                                            <option value="Nam">Cửa hàng kính mắt CN</option>
                                            <option value="">Công ty bánh kẹo</option>
                                            <option value="">Cửa hàng quần áo LD</option>
                                            <option value="">Cửa hàng đồ chơi Lego</option>
                                            <option value="">Cửa hàng quần áo nhập khẩu</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Chọn loại hàng:</label>
                                <div class="col-lg-8">
                                    <div class="ui-select">
                                        <select class="form-control">
                                            <option value="Nam">TV</option>
                                            <option value="">Điện thoại di động</option>
                                            <option value="">Sữa tươi</option>
                                            <option value="">Thực phẩm</option>
                                            <option value="">Dụng cụ điện</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Mô tả chi tiết:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="Mô tả">
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

        <dialog id="favDialog_chinhsua">
            <div class="container">
                <h1>Chỉnh sửa thông tin</h1>
                <hr>
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-3">
                        <div class="text-center">
                            <img src="https://images.samsung.com/is/image/samsung/vn-uhd-nu7090-ua43nu7090kxxv-frontblack-108921413?$PD_GALLERY_L_JPG$"
                                 alt="avatar">
                            <h6>Smart TV 4k</h6>

                            <input type="file" class="form-control">
                        </div>
                    </div>

                    <!-- edit form column -->
                    <div class="col-md-9 personal-info">


                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Tên sản phẩm:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="Smart TV 4k">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Giá sản phẩm:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="10.000.000">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Chọn nhà cung cấp:</label>
                                <div class="col-lg-8">
                                    <div class="ui-select">
                                        <select class="form-control">
                                            <option value="Nam">Cửa hàng kính mắt CN</option>
                                            <option value="">Công ty bánh kẹo</option>
                                            <option value="">Cửa hàng quần áo LD</option>
                                            <option value="">Cửa hàng đồ chơi Lego</option>
                                            <option value="">Cửa hàng quần áo nhập khẩu</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Chọn loại hàng:</label>
                                <div class="col-lg-8">
                                    <div class="ui-select">
                                        <select id="gioitinh" class="form-control">
                                            <option value="Nam">TV</option>
                                            <option value="">Điện thoại di động</option>
                                            <option value="">Sữa tươi</option>
                                            <option value="">Thực phẩm</option>
                                            <option value="">Dụng cụ điện</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Mô tả chi tiết:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" value="Mô tả">
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

        <!-- END PAGE WRAPPER -->
    </div>
</div>
<!-- END BODY -->
</body>
<!-- END HTML -->
</html>