<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="/WEB-INF/views/header.jsp" %>
<div class="container account-login">
    <!-- START of LOGIN-FORM -->
    <div class="clearfix dangky">

        <div class="login">
            <h3><span class="noibat">ĐĂNG NHẬP</span></h3>

            <form  class="login-form"  action="/dang-nhap" method="post">
                <fieldset>
                    <br/>Tên đăng nhập: <input type="text" name="us" placeholder="Name"/>
                    Mật khẩu: <input type="password" name="pw" placeholder="Password"/>

                    <input class="login-btn" type="submit" value="Đăng nhập"/>
                </fieldset>${message}
            </form>
        </div>
    </div>
    <!-- END of LOGIN-FORM -->


</div>
<!-- end of .container -->
<%@ include file="/WEB-INF/views/footer.jsp" %>