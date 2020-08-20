<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="/WEB-INF/views/header.jsp" %>
<div class="container">
    <!-- START of INNER-CONTAINER -->
    <div class="inner-container">

        <div class="cart">

            <h3>
                <span>Giỏ hàng của bạn</span>
            </h3>

            <table>
                <tr>
                    <th>Xóa</th>
                    <th>Hình ảnh</th>
                    <th class="name-header">Tên sản phẩm</th>
                    <th>Nhà sản xuất</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Tổng</th>
                </tr>
                <tr>
                    <td><input type="checkbox"/></td>
                    <td class="thumb"><img
                            src="https://riooshop.com/wp-content/uploads/2020/04/ao-thun-nam-co-tron-xuat-khau-hollister-rtx005-4.jpg"
                            alt=""/></td>
                    <td class="name">Áo thun nam</td>
                    <td><a href="#">shop1</a></td>

                    <td class="qty"><input type="text" value="1"/></td>
                    <td>đ 170.000</td>
                    <td class="red">đ 170.000</td>
                </tr>
                <tr>
                    <td><input type="checkbox"/></td>
                    <td class="thumb"><img
                            src="https://th-test-11.slatic.net/p/c09db9d3727f9c8fe960ff3bb730006b.jpg_720x720q80.jpg_.webp"
                            alt=""/></td>
                    <td class="name">Bộ dụng cụ nhà bếp</td>
                    <td><a href="#">shop2</a></td>

                    <td class="qty"><input type="text" value="1"/></td>
                    <td>đ 310.000</td>
                    <td class="red">đ 310.000</td>
                </tr>
                <tr>
                    <td><input type="checkbox"/></td>
                    <td class="thumb"><img
                            src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRoIu1ZuksriZwVcE1DarV6qAJuEWMn2iFwJQ&usqp=CAU"
                            alt=""/></td>
                    <td class="name">Cặp sách</td>
                    <td><a href="#">shop3</a></td>

                    <td class="qty"><input type="text" value="1"/></td>
                    <td>đ 190.000</td>
                    <td class="red">đ 190.000</td>
                </tr>
                <tr>
                    <td><input type="checkbox"/></td>
                    <td class="thumb"><img
                            src="https://img.nhabanhang.com/sp/f/194549/giay-nam-giay-sneaker-nam-nu-giay-the-thao-hot-trend-cao-cap-tang-kem-tat-lua-nam-19.jpg"
                            alt=""/></td>
                    <td class="name">Giày nam</td>
                    <td><a href="#">shopmall</a></td>

                    <td class="qty"><input type="text" value="1"/></td>
                    <td>đ 500.000</td>
                    <td class="red">đ 500.000</td>
                </tr>
            </table>

            <div class="clearfix">


                <div class="right-column">
                    <p class="total">Tổng số tiền: đ 1.170.000</p>
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