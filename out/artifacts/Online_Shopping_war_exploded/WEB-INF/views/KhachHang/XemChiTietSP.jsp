<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="/WEB-INF/views/header.jsp" %>
<div class="container">


    <!-- START of BREADCRUMBS -->
    <p id="breadcrumbs">
        <a href="/nganh-hang">Thiết bị điện tử</a>
        <span class="active">Ti vi</span>
    </p>
    <!-- END of BREADCRUMBS -->


    <!-- START of INNER-CONTAINER -->
    <div class="inner-container clearfix">

        <div id="product" class="clearfix">
            <div class="product-gallery">
                <div class="large-image">
                    <a class="cloud-zoom" id='zoom1' href="images/product-gallery/very-large-image.jpg"
                       rel="adjustX: 10, adjustY:-4, softFocus:true">
                        <img src="https://bizweb.dktcdn.net/thumb/1024x1024/100/354/932/products/tivi-sony-kd-55x8000g-2-org.jpg?v=1581063774807"
                             alt=""/>
                    </a>
                </div>
                <ul class="clearfix">
                    <li><a class="thumbnail cloud-zoom-gallery" href='images/product-gallery/very-large-image.jpg'
                           title='Thumbnail 1'
                           rel="useZoom: 'zoom1', smallImage: 'images/product-gallery/large-image.jpg' ">
                        <img src="https://bizweb.dktcdn.net/thumb/medium/100/354/932/products/tivi-sony-kd-55x8000g-8-1-org.jpg?v=1581063806433"
                             alt=""/>
                    </a>
                    </li>
                    <li><a class="thumbnail cloud-zoom-gallery" href="images/product-gallery/very-large-image2.jpg"
                           title='Thumbnail 2'
                           rel="useZoom: 'zoom1', smallImage: 'images/product-gallery/large-image2.jpg' ">
                        <img src="https://bizweb.dktcdn.net/thumb/medium/100/354/932/products/tivi-sony-kd-55x8000g-9-1-org.jpg?v=1581063820980"
                             alt=""/>
                    </a>
                    </li>
                    <li><a class="thumbnail cloud-zoom-gallery" href="images/product-gallery/very-large-image3.jpg"
                           title='Thumbnail 3'
                           rel="useZoom: 'zoom1', smallImage: 'images/product-gallery/large-image3.jpg' ">
                        <img src="https://bizweb.dktcdn.net/thumb/medium/100/354/932/products/tivi-sony-kd-55x8000g-10-org.jpg?v=1581063842580"
                             alt=""/>
                    </a>
                    </li>
                    <li><a class="thumbnail last cloud-zoom-gallery" href="images/product-gallery/very-large-image4.jpg"
                           title='Thumbnail 4'
                           rel="useZoom: 'zoom1', smallImage: 'images/product-gallery/large-image4.jpg' ">
                        <img src="https://bizweb.dktcdn.net/thumb/medium/100/354/932/products/tivi-sony-kd-55x8000g-11-1-org.jpg?v=1581063856747"
                             alt=""/>
                    </a>
                    </li>
                </ul>
            </div><!-- end of .product-gallery -->

            <div class="product-detail">
                <h2><a href="#">Android Yivi Sony 55 inch</a></h2>
                <cite>Nhà cung cấp: sony</cite>
                <!--                <p>Product Code: 123456</p>-->
                <!--                <p>Reward Points: 9</p>-->
                <p>Tình trạng:<span>Còn hàng</span></p>
                <p class="price">Giá: 13.000.000 đ</p>

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
            <h3><span>CATEGORIES</span></h3>
            <ul>
                <li><a href="/chi-tiet-san-pham">Ti vi</a></li>
                <li><a href="#">Tủ lạnh</a></li>
                <li><a href="#">Máy tính</a></li>
                <li><a href="#">Điều hòa</a></li>
                <li><a href="#">Điện thoại</a></li>
                <li><a href="#">Đồng hồ</a></li>
                <li><a href="#"></a></li>
            </ul>
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
                <p>Kiểu dáng hiện đại, sang trọng<br/>
                    Android Tivi Sony 4K 55 inch KD-55X8000G sở hữu thiết kế hiện đại cùng tông màu đen lịch lãm, mang
                    đến phong cách sống sang trọng cho không gian được bố trí.<br/>

                    Kích thước tivi 55 inch thích hợp bố trí vào nhiều không gian nội thất khác nhau như phòng khách,
                    phòng họp,... Ngoài ra với chân đế dạng chữ V kim loại chắc chắn, giúp tivi đứng vững trên nhiều bề
                    mặt khác nhau.<br/>
                    Đặc điểm nổi bật<br/>

                    Hình ảnh hiển thị sắc nét với độ phân giải 4K .<br/>
                    Khả năng nâng cấp chất lượng hình ảnh độ phân giải thấp lên gần chuẩn 4K với công nghệ 4K X-Reality
                    PRO.<br/>
                    Hệ điều hành Android 8.0 hiện đại, thiết kế remote thông minh và Google Assistant tiện điều khiển,
                    tìm kiếm bằng giọng nói tiếng Việt.<br/>
                </p>
            </div>
        </div><!-- end of .container -->
    </div>
</div>

<%@include file="/WEB-INF/views/footer.jsp" %>