<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="/WEB-INF/views/header.jsp" %>
<div class="container account-login">

    <!-- START of LOGIN-FORM -->
    <div class="clearfix dangky">
        <div class="login">
            <h3><span class="noibat">ĐĂNG KÝ TÀI KHOẢN</span></h3>
            <br/>
            <form class="login-form" method="post" action="#">
                <fieldset>
                    <br/>
                    Tên đăng nhập: <input type="text" name="name" placeholder="Name"/>
                    Mật khẩu: <input type="password" name="pw" placeholder="Password"/>
                    Nhập lại mật khẩu: <input type="password" name="pw2" placeholder="Password"/>
                    Họ và tên:<input type="text" name="fl" placeholder="Fullname"/>
                    Số điện thoại: <input type="text" name="phone" placeholder="Phone"/>
                    Email: <input type="text" name="email" placeholder="Email Address"/>
                    Địa chỉ: <input type="text" name="address" placeholder="Address"/>

                    <input class="login-btn" type="submit" value="Đăng ký"/>
                </fieldset>
                ${message}
            </form>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/footer.jsp" %>