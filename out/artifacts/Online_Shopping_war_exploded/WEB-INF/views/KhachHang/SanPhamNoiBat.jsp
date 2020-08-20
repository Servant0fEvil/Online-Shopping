<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="/WEB-INF/views/header.jsp" %>
<div class="container">
    <!-- START of INNER-CONTAINER -->
    <div class="inner-container clearfix">

        <div id="all-product">

            <h3>
                <span class="noibat">Sản phẩm nổi bật</span>

            </h3>

            <ul class="clearfix grid-view">
                <li class="product">
                    <a href="#" class="thumb"><img
                            src="https://cdn.tgdd.vn/Products/Images/54/74185/tai-nghe-chup-tai-kanen-ip-2090-trang-1-4-org.jpg"
                            alt=""/></a>
                    <div class="data">
                        <a href="#" class="title">Tai nghe chụp tai</a>
                        <div class="clearfix info">
                            <a href="#" class="add-to-cart"><i class="fa fa-cart-plus"></i></a>
                            <span class="price-text">đ<span>350.000</span></span>
                        </div>
                    </div>
                </li>
                <li class="product">
                    <a href="#" class="thumb"><img
                            src="https://bizweb.dktcdn.net/thumb/grande/100/057/672/products/icon-57abe4a5-081d-4f1e-bfbb-13ae4897ecbe.jpg?v=1569664624470"
                            alt=""/></a>
                    <div class="data">
                        <a href="#" class="title">Giày Sneaker</a>
                        <div class="clearfix info">
                            <a href="#" class="add-to-cart"><i class="fa fa-cart-plus"></i></a>
                            <span class="price-text">đ<span>370.000</span></span>
                        </div>
                    </div>
                </li>
                <li class="product last">
                    <a href="#" class="thumb"><img
                            src="https://img.nhabanhang.com/sp/f/194549/giay-nam-giay-sneaker-nam-nu-giay-the-thao-hot-trend-cao-cap-tang-kem-tat-lua-nam-19.jpg"
                            alt=""/></a>
                    <div class="data">
                        <a href="#" class="title">Giày nam</a>
                        <div class="clearfix info">
                            <a href="#" class="add-to-cart"><i class="fa fa-cart-plus"></i></a>
                            <span class="price-text">đ<span>500.000</span></span>
                        </div>
                    </div>
                </li>

                <li class="product">
                    <a href="#" class="thumb"><img
                            src="https://riooshop.com/wp-content/uploads/2020/04/ao-thun-nam-co-tron-xuat-khau-hollister-rtx005-4.jpg"
                            alt=""/></a>
                    <div class="data">
                        <a href="#" class="title">Áo thun nam</a>
                        <div class="clearfix info">
                            <a href="#" class="add-to-cart"><i class="fa fa-cart-plus"></i></a>
                            <span class="price-text">đ<span>170.000</span></span>
                        </div>
                    </div>
                </li>
                <li class="product">
                    <a href="#" class="thumb"><img
                            src="https://th-test-11.slatic.net/p/c09db9d3727f9c8fe960ff3bb730006b.jpg_720x720q80.jpg_.webp"
                            alt=""/></a>
                    <div class="data">
                        <a href="#" class="title">Bộ dụng cụ nhà bếp</a>
                        <div class="clearfix info">
                            <a href="#" class="add-to-cart"><i class="fa fa-cart-plus"></i></a>
                            <span class="price-text">đ<span>310.000</span></span>
                        </div>
                    </div>
                </li>
                <li class="product last">
                    <a href="#" class="thumb"><img
                            src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRoIu1ZuksriZwVcE1DarV6qAJuEWMn2iFwJQ&usqp=CAU"
                            alt=""/></a>
                    <div class="data">
                        <a href="#" class="title ">Cặp sách</a>
                        <div class="clearfix info">
                            <a href="#" class="add-to-cart"><i class="fa fa-cart-plus"></i></a>
                            <span class="price-text">đ<span>190.000</span></span>
                        </div>
                    </div>
                </li>
            </ul>

        </div><!-- end of #product-list -->

        <div id="sidebar">
            <!--                    		<h3><span>CATEGORIES</span></h3>-->
            <!--                            <ul>-->
            <!--                            		<li><a href="#">Bags</a></li>-->
            <!--                            		<li><a href="#">Shoes</a></li>-->
            <!--                            		<li><a href="#">Lorems</a></li>-->
            <!--                            		<li><a href="#">Ipsums</a></li>-->
            <!--                            		<li><a href="#">Dresses</a></li>-->
            <!--                            		<li><a href="#">Jewellery</a></li>-->
            <!--                            		<li><a href="#">Furniture</a></li>-->
            <!--                            </ul>-->
            <img src="https://pic.pikbest.com/01/25/28/06v888piCcDW.jpg-0.jpg!bw340" alt=""/>
        </div><!-- end of #sidebar -->

    </div>
    <!-- END of INNER-CONTAINER -->

    <!-- START of PAGINATION -->
    <p class="pagination">
        <a href="#">&lt;</a>
        <a href="#" class="active">1</a>
        <a href="/sanphamnoibat">2</a>
        <a href="#">3</a>

        <a href="#">&gt;</a>
    </p>
    <!-- END of PAGINATION -->


</div>
<!-- end of .container -->
<%@ include file="/WEB-INF/views/footer.jsp" %>