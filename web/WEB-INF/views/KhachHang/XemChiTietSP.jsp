<%@ page import="com.online.shopping.model.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="/WEB-INF/views/header.jsp" %>
<%@include file="/WEB-INF/views/menubar.jsp" %>
<div class="container">

    <!-- START of INNER-CONTAINER -->
    <div class="inner-container clearfix">

        <div id="product" class="clearfix">
            <div class="product-gallery">
                <div class="large-image">
                    <a class="cloud-zoom" id='zoom1'
                       rel="adjustX: 10, adjustY:-4, softFocus:true">
                        <img src="/image/products/${product.image}"
                             alt=""/>
                    </a>
                </div>

                <ul class="clearfix">
                    <c:forEach var="i" begin="1" end="4">
                        <li><a class="thumbnail cloud-zoom-gallery"
                               title='Thumbnail 1'
                               rel="useZoom: 'zoom1', smallImage: ">
                            <img src="/image/products/${product.id}-${i}.jpg"
                                 alt=""/>
                        </a>
                        </li>
                    </c:forEach>
                </ul>
            </div><!-- end of .product-gallery -->

            <div class="product-detail">
                <h2><a href="#">${product.name}</a></h2>
                <cite>Nhà cung cấp: ${producer.name}</cite>
                <!--                <p>Product Code: 123456</p>-->
                <!--                <p>Reward Points: 9</p>-->
                <p>Tình trạng:<span>
                    <c:choose>
                        <c:when test="${product.quantity<1}">
                            Hết hàng
                        </c:when>
                        <c:when test="${product.quantity>0}">
                            Còn hàng
                        </c:when>
                    </c:choose>
                    </span>
                </p>
                <p class="price">Giá:<%=(long)((Product)pageContext.getRequest().getAttribute("product")).getCost()%>đ </p>

                <form class="options-form" method="get" action="#">
                    <fieldset>
                        <!--                        <div class="available-options">-->
                        <!--                            <label for="options">Size:</label>-->
                        <!--                            <select id="options">-->
                        <!--                                <option value="32">38</option>-->
                        <!--                                <option value="40">40</option>-->
                        <!--                                <option value="42">42</option>-->
                        <!--                                <option value="44">44</option>-->
                        <!--                            </select>-->
                        <!--                        </div>-->
                        <p class="qty">
                            <label>Số lượng:</label>
                            <input type="text" value="1"/>
                        </p>
                        <input type="submit" class="submit-btn" value="Thêm vào giỏ hàng"/>
                    </fieldset>
                </form><!-- end of .available-options -->
                <p class="add-links">
                    <!--                    <a href="#">+Add to Wish List</a>-->
                    <!--                    <a href="#">+ Add to Compare</a>-->
                </p>
                <div class="clearfix rat-rev">
                    <div class="rating">
                        <a href="#" class="yellow">&nbsp;</a>
                        <a href="#" class="yellow">&nbsp;</a>
                        <a href="#" class="yellow">&nbsp;</a>
                        <a href="#" class="gray">&nbsp;</a>
                        <a href="#" class="gray">&nbsp;</a>
                    </div>
                    <p class="review">
                        <!--                        <a href="#" class="review-count">1 Review</a>-->
                        <!--                        <a href="#">Write a Review</a>-->
                    </p>
                </div>
                <ul class="icons">
                    <li><a class="tw" href="#">&nbsp;</a></li>
                    <li><a class="fb" href="#">&nbsp;</a></li>
                    <li><a class="print" href="#">&nbsp;</a></li>
                    <li><a class="email" href="#">&nbsp;</a></li>
                    <li><a class="share" href="#">&nbsp;</a></li>
                </ul>
            </div><!-- end of .product-detail -->
        </div><!-- end of #contents -->

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


    <!-- START TABS EXAMPLE -->
    <div class="product-tabs">
        <ul class="tabs">
            <li><a>Mô tả sản phẩm</a></li>
            <!--            <li><a>REVIEW (1)</a></li>-->
        </ul>
        <div class="panes">
            <div class="tab-pane">
                <p>${product.detail}
                </p>
            </div>
        </div><!-- end of .container -->
    </div>
</div>

<%@include file="/WEB-INF/views/footer.jsp" %>