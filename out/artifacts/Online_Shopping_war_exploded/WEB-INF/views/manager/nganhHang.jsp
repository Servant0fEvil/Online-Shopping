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
                            <button onclick="themmoi(true)" id="themmoi"
                                    class="au-btn au-btn-icon au-btn--green au-btn--small">
                                <i class="zmdi zmdi-plus"></i>Thêm mới
                            </button>

                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Mã</th>
                                <th>Tên ngành hàng</th>
                                <th>Trạng thái</th>
                                <th>Chỉnh sửa</th>
                                <th>Xóa</th>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="${listCat}">
                                    <tr>
                                        <td>${item.id}</td>
                                        <td>${item.nameCat}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${item.state == 1}">Bình thường</c:when>
                                                <c:otherwise>Bị khóa</c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <p onclick="(()=>{
                                                    document.getElementById('edit-cat-id').value = '${item.id}';
                                                    document.getElementById('edit-cat-name').value = '${item.nameCat}';
                                                    chinhsua(true);
                                                    })()">
                                                <button class="btn btn-primary btn-xs" data-title="Chỉnh sửa"
                                                        data-toggle="modal" data-target="#edit">
                                                    <span class="glyphicon glyphicon-pencil"></span>
                                                </button>
                                            </p>
                                        </td>
                                        <td>
                                            <form action="${pageContext.request.contextPath}/managers/category-manager/delete"
                                                  method="post">
                                                <input type="hidden" name="delete-cat-id" value="${item.id}">
                                                <button onclick="xoa()" class="btn btn-danger btn-xs"
                                                        data-title="Delete"
                                                        data-toggle="modal" data-target="#delete" name="delete">
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
            <!-- edit form column -->
            <div class="col-md-9 personal-info">
                <form class="form-horizontal" action="${pageContext.request.contextPath}/managers/category-manager/new"
                      method="post" role="form">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Tên nghành hàng:</label>
                        <div class="col-lg-8">
                            <input class="form-control" name="name" type="text">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-3 control-label"></label>
                        <div class="col-md-8">
                            <button class="btn btn-primary">Lưu</button>
                            <button class="btn btn-primary" onclick="return themmoi(false)">Hủy</button>
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
            <!-- edit form column -->
            <div class="col-md-9 personal-info">
                <form class="form-horizontal" role="form" action="/managers/category-manager/edit" method="post">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Tên ngành hàng:</label>
                        <div class="col-lg-8">
                            <input type="hidden" id="edit-cat-id" name="id">
                            <input class="form-control" type="text" value="Thiết bị điện tử" name="name" id="edit-cat-name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label"></label>
                        <div class="col-md-8">
                            <button class="btn btn-primary">Lưu</button>
                            <button class="btn btn-primary" onclick="return chinhsua(false)">Hủy</button>
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