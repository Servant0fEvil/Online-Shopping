<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="/WEB-INF/views/header.jsp" %>
<%@include file="/WEB-INF/views/menubar.jsp" %>
<div class="container">

    <!-- START of SLIDER -->
    <div id="slider">
        <div class="slides" id="slides">
            <div class="slide">
                <a href="#"><img src="/images/slider/slide4.jpg" alt="comfortable sofa"/></a>
                <div class="caption">
                    <!--                                    		<a href="product.html" class="purchase-btn">&nbsp;</a>-->
                    <p>Sofa trắng - Số lượng có hạn <span class="price">đ2.699.000</span></p>
                </div><!-- end of .caption -->
            </div>
            <div class="slide">
                <a href="#"><img src="/images/slider/slide3.jpg" alt="cool camera"/></a>
                <div class="caption">
                    <!--                                    		<a href="product.html" class="purchase-btn">&nbsp;</a>-->
                    <p>Máy ảnh bán chạy nhất- Số lượng có hạn <span class="price">đ1.799.000</span></p>
                </div><!-- end of .caption -->
            </div>
            <div class="slide">
                <a href="#"><img src="/images/slider/slide1.jpg" alt="diamonds on the soles of her shoes"/></a>
                <div class="caption">

                    <p>Giày đính đá- Số lượng có hạn <span class="price">đ179.000</span></p>
                </div><!-- end of .caption -->
            </div><!-- end of .slide -->

            <div class="slide">
                <a href="#"><img src="/images/slider/slide2.jpg" alt="suit for the soles of his body"/></a>
                <div class="caption">
                    <!--                                    		<a href="product.html" class="purchase-btn">&nbsp;</a>-->
                    <p>Lorem Suit - Số lượng có hạn <span class="price">đ1.999.000</span></p>
                </div><!-- end of .caption -->
            </div><!-- end of .slide -->

            <!-- end of .slide -->
            <!-- end of .slide -->

        </div><!-- end of .slides -->

        <div id="slider-pager"></div>
    </div>
    <!-- END of SLIDER -->


    <!-- START of FEATURED PRODUCTS -->
    <div class="product-listing">
        <h3><span>Sản phẩm hôm nay</span></h3>
        <ul class="clearfix">
            <c:forEach var="a" items="${products}">
                <li class="product last">
                    <a href="#" class="thumb"><img
                            src="/images/products/${a.image}"
                            alt=""/></a>
                    <div class="data">
                        <a href="#" class="title">${a.name}</a>
                        <div class="clearfix info">
                            <a href="#" class="add-to-cart"><i class="fa fa-cart-plus"></i></a>
                            <span class="price-text">đ<span>${a.cost}</span></span>
                        </div>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>
    <!-- END of FEATURED PRODUCTS -->


    <!-- START of LATEST PRODUCTS -->
    <div class="product-listing">
        <h3><span>Mới</span></h3>

            <ul class="clearfix">
            <c:forEach var="a" items="${products}">
                <li class="product last">
                    <a href="<c:url value = '/chi-tiet-san-pham/${a.id}'/>" class="thumb"><img
                            src="/images/products/${a.image}"
                            alt=""/></a>
                    <div class="data">
                        <a href="#" class="title">${a.name}</a>
                        <div class="clearfix info">
                            <a href="#" class="add-to-cart"><i class="fa fa-cart-plus"></i></a>
                            <span class="price-text">đ<span>${a.cost}</span></span>
                        </div>
                    </div>
                </li>
            </c:forEach>
            </ul>
    </div>
    <!-- END of LATEST PRODUCTS -->


    <!-- START of PAGINATION -->
    <p class="pagination">
        <!--    				<a href="#">&lt;</a>-->
        <!--                    <a href="#" class="active">1</a>-->
        <!--                    <a href="#">2</a>-->
        <!--                    <a href="#">3</a>-->
        <!--                    <a href="#">4</a>-->
        <!--                    <a href="#">5</a>-->
        <!--                    <a href="#">6</a>-->
        <!--                    <a href="#">7</a>-->
        <!--                    <a href="#">&gt;</a>        		-->
    </p>
    <!-- END of PAGINATION -->


</div>
<!-- end of .container -->
<%@include file="/WEB-INF/views/footer.jsp" %>
