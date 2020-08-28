<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="/WEB-INF/views/header.jsp" %>
<%@include file="/WEB-INF/views/menubar.jsp"%>
<div class="container">
    <!-- START of INNER-CONTAINER -->
    <div class="inner-container clearfix">

        <div id="all-product">

            <h3>
                <span class="noibat">Sản phẩm nổi bật</span>

            </h3>

            <ul class="clearfix grid-view">
                <c:forEach var="a" items="${products}">
                    <li class="product last">
                        <a href="<c:url value = '/chi-tiet-san-pham/${a.id}'/>" class="thumb"><img
                                src="/image/products/${a.image}"
                                alt=""/></a>
                        <div class="data">
                            <a href="<c:url value = '/chi-tiet-san-pham/${a.id}'/>" class="title">${a.name}</a>
                            <div class="clearfix info">
                                <a href="/gio-hang" class="add-to-cart"><i class="fa fa-cart-plus"></i></a>
                                <span class="price-text">đ<span>${a.cost}</span></span>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>

        </div><!-- end of #product-list -->

        <div id="sidebar">
            <img src="https://pic.pikbest.com/01/25/28/06v888piCcDW.jpg-0.jpg!bw340" alt=""/>
        </div>

    </div>
    <!-- END of INNER-CONTAINER -->
</div>
<!-- end of .container -->
<%@ include file="/WEB-INF/views/footer.jsp" %>