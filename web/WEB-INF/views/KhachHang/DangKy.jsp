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
                    Tên đăng nhập: <input type="text" id="name" placeholder="Name"/>
                    Mật khẩu: <input type="password" id="pw" placeholder="Password"/>
                    Nhập lại mật khẩu: <input type="password" id="pw2" placeholder="Password"/>
                    Số điện thoại: <input type="text" id="phone" placeholder="Phone"/>
                    Email: <input type="text" id="email" placeholder="Email Address"/>
                    Địa chỉ: <input type="text" id="address" placeholder="Address"/>

                    <input class="login-btn" type="submit" value="Đăng ký"/>
                </fieldset>

            </form>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/footer.jsp" %>