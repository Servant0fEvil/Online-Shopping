<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/menubar.jsp"%>
<div class="container">

    <!-- START of INNER-CONTAINER -->
    <div class="inner-container clearfix">

        <div id="all-product">

            <h3>
                <span class="noibat">${nameType}</span>

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
            <h3><span>Loại hàng</span></h3>
            <ul>
                <c:forEach var="c" items="${type}">
                    <li>
                        <a href="<c:url value = '/loai-hang/${c.nameType}/${c.id}'/>">
                                ${c.nameType}
                        </a>
                    </li>
                </c:forEach>
            </ul>

        </div><!-- end of #sidebar -->

    </div>
    <!-- END of INNER-CONTAINER -->

    <!-- START of PAGINATION -->
    <p class="pagination">
        <!--        <a href="#">&lt;</a>-->
        <!--        <a href="#" class="active">1</a>-->
        <!--        <a href="all-2.html">2</a>-->
        <!--        <a href="#">3</a>-->

        <!--        <a href="#">&gt;</a>-->
    </p>
    <!-- END of PAGINATION -->


</div><!-- end of .container -->
<%@include file="/WEB-INF/views/footer.jsp"%>