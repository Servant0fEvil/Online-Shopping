<%@ page import="com.online.shopping.model.Product" %>
<%@ page import="com.online.shopping.model.ProductCategory" %>
<%@ page import="com.online.shopping.model.ProductType" %>
<%@ page import="java.util.List" %><%--
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
                        <h1>Bảng tra cứu hàng hóa</h1>
                        <div class="table-responsive">
                            <button onclick="themmoi(true)" id="themmoi"
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
                                <th>Trạng thái</th>
                                <th>Chỉnh sửa</th>
                                <th>Xóa</th>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="${productList}">
                                    <tr>
                                        <td>${item.id}</td>
                                        <td><img src="${pageContext.request.contextPath}/image/products/${item.image}">
                                        </td>
                                        <td>${item.name}</td>
                                        <td><%=(long)((Product)pageContext.getAttribute("item")).getCost()%>đ</td>
                                        <%
                                            Product product = (Product) pageContext.getAttribute("item");
                                            List<ProductType> types = (List<ProductType>) pageContext.getRequest().getAttribute("typeList");
                                            List<ProductCategory> categories = (List<ProductCategory>) pageContext.getRequest().getAttribute("catList");

                                            ProductType type = null;
                                            for (ProductType t : types)
                                                if (product.getTypeId() == product.getTypeId()) type = t;

                                            ProductCategory cat = null;
                                            for (ProductCategory c : categories)
                                                if (type.getCatID() == c.getId()) cat = c;
                                            out.write("<td>" + cat.getNameCat() + "</td>");
                                            out.write("<td>" + type.getNameType() + "</td>");
                                        %>
                                        <td>
                                            <c:choose>
                                                <c:when test="${item.state == 1}">Bình thường</c:when>
                                                <c:otherwise>Bị khóa</c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <p onclick="chinhsua(true)">
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

                            <button class="btn btn-primary" onclick="themmoi(false)">Hủy</button>
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

                            <button class="btn btn-primary" onclick="chinhsua(false)">Hủy</button>
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