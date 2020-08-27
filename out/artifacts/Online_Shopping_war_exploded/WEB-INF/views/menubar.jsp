<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/20/2020
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="navigation-wrapper">

    <!-- MAIN NAVIGATION -->

    <ul id="navigation" class="clearfix left">
        <li class="home"><a href="/trang-chu"><img src="/image/home.png" alt=""/>Home</a></li>
        <li><a href="/san-pham-noi-bat">Sản phẩm nổi bật</a></li>

        <li><a href="/tin-tuc">Tin tức</a></li>
        <!--                    <li><a href="blog-single.html">PHẢN HỒI CHI TIẾT</a></li>-->
        <!--            		<li><a href="full-width.html">Fullwidth</a></li>            		            	-->
        <!--            		<li><a href="contact.html">LIÊN HỆ</a></li>-->
        <li><a href="#">Ngành hàng</a>
            <ul>
<%--                <li><a href="/nganh-hang">Thiết bị điện tử</a></li>--%>
<%--                <li><a href="#">Giày</a></li>--%>
<%--                <li><a href="#">Đồ gia dụng</a></li>--%>
<%--                <li><a href="#">Quần áo</a></li>--%>
<%--                <li><a href="#">Sách</a></li>--%>
<%--                <li><a href="#">ô tô- xe máy</a></li>--%>
                    <c:forEach var = "b" items = "${category}" >
                        <li>
                            <a href="<c:url value = '/nganh-hang/${b.nameCat}/${b.id}'/>">
                                ${b.nameCat}
                            </a>
                        </li>
                    </c:forEach>
            </ul>
        </li>
        <li><a href="/tra-cuu-don-hang">Đơn hàng</a></li>
        <li class="timkiem">
            <form class="search " method="get" action="#">
                <fieldset>
                    <input type="text" id="s" name="s" value="Search"/>
                    <input class="submit" type="submit" value="Submit"/>
                </fieldset>
            </form><!-- end of .search -->

        </li>
    </ul><!-- end of #navigation -->


</div>