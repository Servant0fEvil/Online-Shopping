<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="/WEB-INF/views/header.jsp" %>
<%@include file="/WEB-INF/views/menubar.jsp" %>
<div class="container">
    <!-- START of INNER-CONTAINER -->
    <div class="inner-container">

        <div class="cart">

            <h3>
                <span>Giỏ hàng của bạn</span>
            </h3>

            <table>
                <tr>
                    <th>Hình ảnh</th>
                    <th class="name-header">Tên sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Tổng</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="item" items="${listcart}">
                    <tr>
                        <td class="thumb"><img
                                src="/image/products/${item.image}"
                                alt=""/></td>
                        <td class="name">${item.name}</td>
                        <td class="qty"><input type="number" id="quantity_${item.id}" value="${item.quantity}"/></td>
                        <td>đ ${item.price}</td>
                        <td class="red">${item.price.longValue()*item.quantity}</td>
                        <td>
                            <a href="<c:url value="/gio-hang/xoa-hang/${item.id}"/>" class="bottom-toolbar">Remove </a>
                            <script type="text/javascript">
                                function update(quantity, id) {
                                    window.location.href = "/gio-hang/cap-nhat" + "?id=" + id + "&quantity=" + quantity;

                                    return false;
                                }
                            </script>
                            <a href="#" class="bottom-toolbar"
                               onclick="return update(document.getElementById('quantity_${item.id}').value,${item.id})">Update</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <div class="clearfix">
                <div class="right-column">
                    <c:if test="${total != 0}">
                        <p class="total">Tổng số tiền: ${total} </p>
                    </c:if>
                    <p>
                        <a class="checkout">Đặt mua</a>
                        <a class="update">Cập nhật</a>
                    </p>
                    <p><a href="/san-pham-noi-bat">Tiếp tục mua sắm &rarr;</a></p>
                </div>
            </div>

        </div><!-- end of #product-list -->

    </div>
    <!-- END of INNER-CONTAINER -->


</div>


<!-- end of .container -->
<%@ include file="/WEB-INF/views/footer.jsp" %>