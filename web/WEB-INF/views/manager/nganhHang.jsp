<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 04/08/2020
  Time: 10:32 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>

<!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">

            <div class="container">
                <div class="row">


                    <div class="col-md-12">
                        <h1>Bảng tra cứu ngành hàng</h1>
                        <div class="table-responsive">
                            <button onclick="themmoi()" id="themmoi"
                                    class="au-btn au-btn-icon au-btn--green au-btn--small">
                                <i class="zmdi zmdi-plus"></i>Thêm mới
                            </button>


                            <table id="mytable" class="table table-bordred table-striped">

                                <thead>

                                <th>Mã</th>
                                <th>Tên ngành hàng</th>
                                <th>Trạng thái hoạt động</th>
                                <th>Chỉnh sửa</th>
                                <th>Xóa</th>
                                <th>Xác nhận</th>
                                </thead>
                                <tbody>

                                <tr>
                                    <td>001</td>
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
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
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
                                    <td>Tạp hóa</td>
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
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
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
                                    <td>Thời trang</td>
                                    <td><select>
                                        <option>Không hoạt động</option>
                                        <option>Hoạt động</option>
                                    </select></td>
                                    <td>
                                        <p onclick="chinhsua()">
                                            <button class="btn btn-primary btn-xs" data-title="Chỉnh sửa"
                                                    data-toggle="modal" data-target="#edit"><span
                                                    class="glyphicon glyphicon-pencil"></span></button>
                                        </p>
                                    </td>
                                    <td>
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
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
                                    <td>Đồ gia dụng</td>
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
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
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

                                    <td>005</td>
                                    <td>Sức khỏe & làm đẹp</td>
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
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
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
                                <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a>
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
</div>
<!-- END PAGE CONTAINER-->

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
                        <label class="col-lg-3 control-label">Tên nghành hàng:</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text">
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
                    <img src="" alt="avatar">


                    <input type="file" class="form-control">
                </div>
            </div>

            <!-- edit form column -->
            <div class="col-md-9 personal-info">


                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Tên nhà ngành hàng:</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text" value="Thiết bị điện tử	">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Danh sách loại hàng:</label>
                        <div class="col-lg-8">
                            <div class="ui-select">
                                <select class="form-control">
                                    <option value="Nam">Điện thoại di động</option>
                                    <option value="">Laptop</option>
                                    <option value="">Máy in</option>

                                </select>
                            </div>
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
<!-- END PAGE CONTAINER -->
</div>

<!-- END PAGE WRAPPER -->
</div>

<!-- END BODY -->
</body>

<!-- END HTML -->
</html>