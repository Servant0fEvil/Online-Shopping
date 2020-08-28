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
                        <h1>Bảng tra cứu đơn hàng</h1>
                        <div class="table-responsive">


                            <table id="mytable" class="table table-bordred table-striped">

                                <thead>

                                <th>Mã</th>
                                <th>Họ và tên khách hàng</th>
                                <th>Số lượng sản phẩm</th>
                                <th>Tổng tiền</th>
                                <th>Trạng thái</th>
                                <th>Xóa</th>
                                </thead>
                                <tbody>

                                <tr>
                                    <td>001</td>
                                    <td>Nguyễn lê hà</td>
                                    <td> 2</td>
                                    <td>150.000</td>
                                    <td> Đã giao</td>
                                    <td>
                                        <button name="delete-id" onclick="xoa()" class="btn btn-danger btn-xs"
                                                data-title="Delete" data-toggle="modal" data-target="#delete">
                                            <span class="glyphicon glyphicon-trash"></span>
                                        </button>
                                    </td>

                                </tr>
                                <tr>
                                    <td>002</td>
                                    <td>Trần văn tùng</td>
                                    <td>1</td>
                                    <td>15.000.000</td>
                                    <td>Đã giao</td>
                                    <td>
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
                                                data-toggle="modal" data-target="#delete"><span
                                                class="glyphicon glyphicon-trash"></span></button>
                                    </td>


                                </tr>
                                <tr>
                                    <td>003</td>
                                    <td>Nguyễn lan anh</td>
                                    <td>5</td>
                                    <td>3.520.000</td>
                                    <td> Đang giao</td>
                                    <td>
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
                                                data-toggle="modal" data-target="#delete"><span
                                                class="glyphicon glyphicon-trash"></span></button>
                                    </td>


                                </tr>
                                <tr>
                                    <td>004</td>
                                    <td>Trần văn tùng</td>
                                    <td>2</td>
                                    <td>1.000.000</td>
                                    <td>Đang giao</td>

                                    <td>
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
                                                data-toggle="modal" data-target="#delete"><span
                                                class="glyphicon glyphicon-trash"></span></button>
                                    </td>

                                </tr>

                                </tbody>

                            </table>

                            <div class="clearfix"></div>
                            <ul class="pagination pull-right">
                                <li class="disabled"><a href="#"><span
                                        class="glyphicon glyphicon-chevron-left"></span></a></li>
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

<!-- END PAGE CONTAINER -->
</div>

<!-- END PAGE WRAPPER -->
</div>

<!-- END BODY -->
</body>

<!-- END HTML -->
</html>