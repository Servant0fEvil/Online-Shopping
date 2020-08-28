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
                        <h1>Bảng tra cứu tin tức</h1>
                        <div class="table-responsive">
                            <button onclick="themmoi()" id="themmoi"
                                    class="au-btn au-btn-icon au-btn--green au-btn--small">
                                <i class="zmdi zmdi-plus"></i>Thêm mới
                            </button>


                            <table id="mytable" class="table table-bordred table-striped">

                                <thead>

                                <th>Mã</th>
                                <th>Tiêu đề</th>
                                <th>Loại tin</th>
                                <th>Trạng thái tin</th>
                                <th>Sửa</th>
                                <th>Xóa</th>
                                <th>Xác nhận</th>
                                </thead>
                                <tbody>

                                <tr>
                                    <td>001</td>
                                    <td>Vạn Hạnh Mall ưu đãi lớn dịp Tết</td>
                                    <td>Tin khuyến mại</td>
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
                                    <td>Thiết bị phòng tắm Kohler giảm giá 40%</td>
                                    <td>Tin khuyến mại</td>
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
                                    <td>Gợi ý nâng cấp phòng tắm đón Tết</td>
                                    <td>Tin cẩm nang</td>
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
                                    <td>004</td>
                                    <td>Ưu điểm của nắp bồn cầu thông minh</td>
                                    <td>Tin đánh giá</td>
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
                                    <td>Đăng Quang Watch giảm giá đến 50% dịp Giáng sinh</td>
                                    <td>Tin khuyến mại</td>
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

<dialog id="favDialog_chinhsua">
    <div class="container">
        <h1>Chỉnh sửa thông tin</h1>
        <hr>
        <div class="row">
            <!-- left column -->
            <div class="col-md-3">
                <div class="text-center">
                    <img src="https://www.giadinhnestle.com.vn/sites/default/files/articles/sliders/banner-th%C3%A1ng-1-630X350.jpg"
                         alt="avatar">

                    <input type="file" class="form-control">
                </div>
            </div>

            <!-- edit form column -->
            <div class="col-md-9 personal-info">


                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Tiêu đề:</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text" value="Vạn Hạnh Mall ưu đãi lớn dịp Tết	">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Loại tin:</label>
                        <div class="col-lg-8">
                            <div class="ui-select">
                                <select class="form-control">
                                    <option value="Nam">Tin khuyến mại</option>
                                    <option value="">Tin đánh giá</option>
                                    <option value="">Tin cẩm nang</option>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Tác giả:</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text" value="abcc">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Nội dung:</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text" value="Nội dung">
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
                        <label class="col-lg-3 control-label">Tiêu đề:</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Loại tin:</label>
                        <div class="col-lg-8">
                            <div class="ui-select">
                                <select class="form-control">
                                    <option value="Nam">Tin khuyến mại</option>
                                    <option value="">Tin đánh giá</option>
                                    <option value="">Tin cẩm nang</option>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Tác giả:</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Nội dung:</label>
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
<!-- END PAGE CONTAINER -->
</div>

<!-- END PAGE WRAPPER -->
</div>

<!-- END BODY -->
</body>

<!-- END HTML -->
</html>