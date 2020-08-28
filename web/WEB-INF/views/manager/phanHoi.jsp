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
                        <h1>Bảng tra cứu phản hồi</h1>
                        <div class="table-responsive">


                            <table id="mytable" class="table table-bordred table-striped">

                                <thead>

                                <th>Mã</th>
                                <th>Họ và tên</th>
                                <th> Nội dung phản hồi</th>
                                <th>Xóa</th>

                                </thead>
                                <tbody>

                                <tr>
                                    <td>001</td>
                                    <td>Nguyễn trọng nam</td>
                                    <td>phản hồi về chất lượng tốt</td>

                                    <td>
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
                                                data-toggle="modal" data-target="#delete"><span
                                                class="glyphicon glyphicon-trash"></span></button>
                                    </td>

                                </tr>

                                <tr>

                                    <td>002</td>
                                    <td>Trần thanh nghĩa</td>
                                    <td>Sản phẩm bị lỗi</td>

                                    <td>
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
                                                data-toggle="modal" data-target="#delete"><span
                                                class="glyphicon glyphicon-trash"></span></button>
                                    </td>

                                </tr>


                                <tr>

                                    <td>003</td>
                                    <td>Hoàng văn nam</td>
                                    <td>sản phẩm chất lượng tốt</td>

                                    <td>
                                        <button onclick="xoa()" class="btn btn-danger btn-xs" data-title="Delete"
                                                data-toggle="modal" data-target="#delete"><span
                                                class="glyphicon glyphicon-trash"></span></button>
                                    </td>

                                </tr>


                                <tr>

                                    <td>004</td>
                                    <td>Nguyễn thanh vân</td>
                                    <td>đánh giá 5 sao</td>

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
<!-- END PAGE CONTAINER -->
</div>

<!-- END PAGE WRAPPER -->
</div>

<!-- END BODY -->
</body>

<!-- END HTML -->
</html>
