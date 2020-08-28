<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                        <h1>Bảng tra cứu thành viên</h1>
                        <div class="table-responsive">


                            <table id="mytable" class="table table-bordred table-striped">

                                <thead>
                                <tr>
                                    <th>Mã</th>
                                    <th>Tài khoản</th>
                                    <th>Họ và tên</th>
                                    <th>Giới tính</th>
                                    <th>Địa chỉ nhân viên</th>
                                    <th>Trạng thái</th>
                                    <th>Số điện thoại</th>
                                    <th>Chỉnh sửa</th>
                                    <th>Xóa</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" varStatus="status" items="${list}">
                                    <tr>
                                        <td>${item.id}</td>
                                        <td>${item.userName}</td>
                                        <td>${item.name} </td>
                                        <td>
                                            <c:set var="sex" value="${item.sex}"/>
                                            <c:if test="${sex == 1}">
                                                <c:out value="Nam"/>
                                            </c:if>
                                            <c:if test="${sex == 0}">
                                                <c:out value="Nữ"/>
                                            </c:if>
                                        </td>
                                        <td>${item.address}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${item.status == 1}">Bình thường</c:when>
                                                <c:otherwise>Bị khóa</c:otherwise> </c:choose>
                                        </td>
                                        <td> ${item.phone}</td>
                                        <td>
                                            <p onclick="(()=>{
                                                    document.getElementById('edit-id').value = '${item.id}';
                                                    document.getElementById('edit-current-name').innerHTML ='${item.name}';
                                                    document.getElementById('edit-current-avatar').src ='/image/${item.avatar}';
                                                    document.getElementById('edit-name').value = '${item.name}';
                                                    document.getElementById('edit-email').value = '${item.email}';
                                                    document.getElementById('edit-address').value = '${item.address}';
                                                    document.getElementById('edit-phone').value = '${item.phone}';
                                                    chinhsua(true);
                                                    })()">
                                                <button class="btn btn-primary btn-xs" data-title="Chỉnh sửa"
                                                        data-toggle="modal" data-target="#edit">
                                                    <span class="glyphicon glyphicon-pencil"></span>
                                                </button>
                                            </p>
                                        </td>
                                        <td>
                                            <form role="form"
                                                  action="${pageContext.request.contextPath}/managers/member-manager/delete"
                                                  method="post">
                                                <input type="hidden" name="member-id"
                                                       value='${item.id}'/>
                                                <button class="btn btn-danger btn-xs" data-title="Delete"
                                                        data-toggle="modal" type="submit"
                                                        onClick="return confirm('Bạn có chắc chắn muốn xóa?')">
                                                    <span class="glyphicon glyphicon-trash"></span>
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
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
                                <li>
                                    <a href="#">
                                        <span class="glyphicon glyphicon-chevron-right">
                                        </span>
                                    </a>
                                </li>
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
            <form class="form-horizontal" role="form"
                  action="${pageContext.request.contextPath}/managers/member-manager/update"
                  enctype="multipart/form-data"
                  method="post">
                <input type="text" name="id-member" id="edit-id" style="display: none">
                <div class="col-md-3">
                    <div class="text-center">
                        <img id="edit-current-avatar" src="" alt="avatar ">
                        <h6 id="edit-current-name">Trần Nam Thương</h6>
                        <input type="file" class="form-control" name="avatar">
                    </div>
                </div>

                <!-- edit form column -->
                <div class="col-md-9 personal-info">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Họ và tên:</label>
                        <div class="col-lg-8">
                            <input id="edit-name" class="form-control" type="text" value="Nguyen van a" name="fullname">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Địa chỉ:</label>
                        <div class="col-lg-8">
                            <input id="edit-address" class="form-control" type="text" value="Hà Nội" name="address">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Số điện thoại:</label>
                        <div class="col-lg-8">
                            <input id="edit-phone" class="form-control" type="text" value="0123456789" name="phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Email:</label>
                        <div class="col-lg-8">
                            <input id="edit-email" class="form-control" type="text" value="abc@gmail.com" name="email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label"></label>
                        <div class="col-md-8">

                            <button class="btn btn-primary">Lưu</button>

                            <button class="btn btn-primary" onclick=" return chinhsua(false)">Hủy</button>
                        </div>
                    </div>
                </div>
            </form>
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