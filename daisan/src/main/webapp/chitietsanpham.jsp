<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 7/12/2022
  Time: 8:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="MediaCenter, Template, eCommerce">
    <meta name="robots" content="all">
    <title>DAISAN | Chi tiết sản phẩm</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/blue.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/owl.transitions.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/rateit.css">
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
    <link rel="icon" type="image/x-icon" href="assets/images/favicon.ico">
    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="assets/css/font-awesome.css">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>

<body>
<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">

    <!-- ============================================== TOP MENU ============================================== -->
    <div class="top-bar animate-dropdown">
        <div class="container">
            <div class="header-top-inner">
                <div class="cnt-account">
                    <ul class="list-unstyled">
                        <c:choose>
                            <c:when test="${sessionScope.acc == null}">
                                <li><a href="thongtintaikhoan.jsp"><i class="icon fa fa-user"></i>Tài khoản của tôi</a>
                                </li>
                            </c:when>
                            <c:when test="${sessionScope.acc != null}">
                            <li><a href="thongtintaikhoan.jsp"><i class="icon fa fa-user"></i>${name}</a>
                                </c:when>
                                <c:otherwise>

                                </c:otherwise>
                                </c:choose>
                                        <li><a href="sanphamyeuthich.jsp"><i class="icon fa fa-heart"></i>Yêu thích</a></li>
                                        <li><a href="giohang.jsp"><i class="icon fa fa-shopping-cart"></i>Giỏ hàng</a></li>
                                        <li><a href="thanhtoan.jsp"><i class="icon fa fa-check"></i>Thanh toán</a></li>
                            <c:choose>
                                <c:when test="${sessionScope.acc == null}">
                                    <li><a href="dangnhap.jsp"><i class="icon fa fa-lock"></i>Đăng nhập</a></li>
                                </c:when>
                                <c:when test="${sessionScope.acc != null}">
                                    <li><a href="Logout"><i class="icon fa fa-lock"></i>Đăng xuất</a></li>
                                </c:when>
                                <c:otherwise>

                                </c:otherwise>
                            </c:choose>
                    </ul>
                </div>
                <!-- /.cnt-account -->

                <div class="cnt-block">
                    <ul class="list-unstyled list-inline">
                        <li class="dropdown dropdown-small"> <a href="#" class="dropdown-toggle"
                                                                data-hover="dropdown" data-toggle="dropdown"><span class="value">Tiếng Việt
                                    </span><b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Tiếng Việt</a></li>
                                <li><a href="#">English</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- /.list-unstyled -->
                </div>
                <!-- /.cnt-cart -->
                <div class="clearfix"></div>
            </div>
            <!-- /.header-top-inner -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.header-top -->
    <!-- ============================================== TOP MENU : END ============================================== -->
    <div class="main-header">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
                    <!-- ============================================================= LOGO ============================================================= -->
                    <div class="logo"> <a href="home.jsp"> <img src="assets/images/daisan.png" alt="logo"
                                                                 style="height: 55px; margin-top: -10px"> </a> </div>
                    <!-- /.logo -->
                    <!-- ============================================================= LOGO : END ============================================================= -->
                </div>
                <!-- /.logo-holder -->

                <div class="col-xs-12 col-sm-12 col-md-7 top-search-holder">
                    <!-- /.contact-row -->
                    <!-- ============================================================= SEARCH AREA ============================================================= -->
                    <div class="search-area">
                        <form>
                            <div class="control-group">
                                <ul class="categories-filter animate-dropdown">
                                    <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown"
                                                             href="category.html">Danh
                                        mục<b class="caret"></b></a>
                                        <ul class="dropdown-menu" role="menu">

                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="gachoplat.jsp">- Gạch ốp lát</a>
                                            </li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="daoplat.jsp">- Đá ốp lát</a>
                                            </li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="son.jsp">- Sơn nội thất & ngoại
                                                thất</a>
                                            </li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="sango.jsp">- Sàn gỗ và phụ
                                                kiện</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="tamoptuong.jsp">- Tấm ốp
                                                tường</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="vatlieutho.jsp">- Vật liệu
                                                thô</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="vattunganhda.jsp">- Vật tư ngành
                                                đá</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="category.html">- Vật liệu mài &
                                                phụ kiện</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="cuaso.jsp">- Cửa & cửa sổ,
                                                bản lề & phụ
                                                kiện</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="nep.jsp">- Nẹp</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <input class="search-field" placeholder="Bạn muốn tìm gì đó...">
                                <a class="search-button" href="#"></a>
                            </div>
                        </form>
                    </div>
                    <!-- /.search-area -->
                    <!-- ============================================================= SEARCH AREA : END ============================================================= -->
                </div>
                <!-- /.top-search-holder -->

                <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row">
                    <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

                    <div class="dropdown dropdown-cart"> <a href="#" class="dropdown-toggle lnk-cart"
                                                            data-toggle="dropdown">
                        <div class="items-cart-inner">
                            <div class="basket"> <i class="glyphicon glyphicon-shopping-cart"></i> </div>
                            <div class="basket-item-count"><span class="count">1</span></div>
                            <div class="total-price-basket"> <span class="lbl">Giỏ -</span> <span
                                    class="total-price"> <span class="sign">420.850</span><span
                                    class="value">đ</span> </span> </div>
                        </div>
                    </a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="cart-item product-summary">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <div class="image"> <a href="chitietsanpham.jsp"><img
                                                    src="assets/images/products/gachoplat/p1.jpg" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-xs-7">
                                            <h3 class="name"><a href="">Gạch ốp lát Eurotile BST Vọng Cát
                                                600*600mm VOC-H01</a>
                                            </h3>
                                            <div class="price">420.850đ</div>
                                        </div>
                                        <div class="col-xs-1 action"> <a href="#"><i class="fa fa-trash"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.cart-item -->
                                <div class="clearfix"></div>
                                <hr>
                                <div class="clearfix cart-total">
                                    <div class="pull-right"> <span class="text">Tổng tiền :</span><span
                                            class='price'>900.000đ.00</span>
                                    </div>
                                    <div class="clearfix"></div>
                                    <a href="thanhtoan.jsp"
                                       class="btn btn-upper btn-primary btn-block m-t-20">Thanh toán</a>
                                </div>
                                <!-- /.cart-total-->

                            </li>
                        </ul>
                        <!-- /.dropdown-menu-->
                    </div>
                    <!-- /.dropdown-cart -->

                    <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
                </div>
                <!-- /.top-cart-row -->
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>
    <!-- /.main-header -->

    <!-- ============================================== NAVBAR ============================================== -->
    <div class="header-nav animate-dropdown">
        <div class="container">
            <div class="yamm navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse"
                            class="navbar-toggle collapsed" type="button">
                        <span class="sr-only">Chuyển Điều Hướng</span> <span class="icon-bar"></span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> </button>
                </div>
                <div class="nav-bg-class">
                    <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                        <div class="nav-outer">
                            <ul class="nav navbar-nav">
                                <li class="active dropdown yamm-fw"> <a href="home.jsp">Trang chủ</a> </li>
                                <li class="dropdown yamm mega-menu"> <a href="#" data-hover="dropdown"
                                                                        class="dropdown-toggle" data-toggle="dropdown">Danh Mục</a>
                                    <ul class="dropdown-menu container">
                                        <li>
                                            <div class="yamm-content ">
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu drop-height">
                                                        <h2 class="title">Gạch ốp lát</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Gạch ốp tường</a></li>
                                                            <li><a href="#">Gạch lát nền </a></li>
                                                            <li><a href="#">Gạch bông</a></li>
                                                            <li><a href="#">Gạch 3D</a></li>
                                                            <li><a href="#">Gạch Mosaic</a></li>
                                                            <li><a href="#">Gạch sân vườn, vỉa hè </a></li>
                                                            <li><a href="#">Gạch Kính </a></li>
                                                            <li><a href="#">Gạch vân gỗ </a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Đá ốp lát</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Đá nhân tạo</a></li>
                                                            <li><a href="#">Đá lát nền</a></li>
                                                            <li><a href="#">Đá sân vườn </a></li>
                                                            <li><a href="#">Đá hoa văn</a></li>
                                                            <li><a href="#">Đá lát vỉa hè</a></li>
                                                            <li><a href="#">Đá ốp cầu thang</a></li>
                                                            <li><a href="#">Đá Mosaic</a></li>
                                                            <li><a href="#">Đá ốp tường</a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Sơn nội thất & ngoại thất</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Sơn nội thất </a></li>
                                                            <li><a href="#">Sơn ngoại thất</a></li>
                                                            <li><a href="#">Sơn lót</a></li>
                                                            <li><a href="#">Sơn chống thấm</a></li>
                                                            <li><a href="#">Bột bả và chống thấm</a></li>
                                                            <li><a href="#">Sơn kim loại</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Sàn gỗ và phụ kiện</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Sàn gỗ tự nhiên </a></li>
                                                            <li><a href="#">Sàn gỗ ngoài trời</a></li>
                                                            <li><a href="#">Sàn gỗ công nghiệp</a></li>
                                                            <li><a href="#">Phụ kiện sàn gỗ</a></li>
                                                            <li><a href="#">Tấm ván ép</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Tấm ốp tường</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Tấm đá xuyên sáng </a></li>
                                                            <li><a href="#">Tấm ốp bằng nhôm</a></li>
                                                            <li><a href="#">Tấm ốp ngoài trời</a></li>
                                                            <li><a href="#">Trần nhôm</a></li>
                                                            <li><a href="#">Lam chắn nắng</a></li>
                                                            <li><a href="#">Tấm panel, vách ngăn</a></li>
                                                            <li><a href="#">Tấm ốp tường 3D</a></li>
                                                            <li><a href="#">Tấm ốp tường ván gỗ</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Vật liệu thô</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Inox </a></li>
                                                            <li><a href="#">Sắt thép xây dựng</a></li>
                                                            <li><a href="#">Ống đồng</a></li>
                                                            <li><a href="#">Xi măng</a></li>
                                                            <li><a href="#">Cát, sỏi xây dựng</a></li>
                                                            <li><a href="#">Bê tông</a></li>
                                                            <li><a href="#">Lưới xây dựng</a></li>
                                                            <li><a href="#">Dàn giáo</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Vật tư ngành đá</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Đá cắt đá mài </a></li>
                                                            <li><a href="#">Lưỡi cắt</a></li>
                                                            <li><a href="#">Mũi Khoan </a></li>
                                                            <li><a href="#">Vật tư thi công </a></li>
                                                            <li><a href="#">Thanh ty ren </a></li>
                                                            <li><a href="#">Bát mài </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Vật liệu mài & phụ kiện</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Tấm lợp mái </a></li>
                                                            <li><a href="#">Tấm trần</a></li>
                                                            <li><a href="#">Ngói </a></li>
                                                            <li><a href="#">Phụ kiện ngói </a></li>
                                                            <li><a href="#">Phụ kiện trần </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Cửa & cửa sổ. bán lẻ & phụ kiện</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Cửa nhôm</a></li>
                                                            <li><a href="#">Cửa gỗ </a></li>
                                                            <li><a href="#">Cửa kính </a></li>
                                                            <li><a href="#">Cửa kéo </a></li>
                                                            <li><a href="#">Cửa cuốn </a></li>
                                                            <li><a href="#">Cửa cổng </a></li>
                                                            <li><a href="#">Cửa nhựa </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Nẹp</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Nẹp dán cạnh</a></li>
                                                            <li><a href="#">Nẹp đồng </a></li>
                                                            <li><a href="#">Nẹp nhôm </a></li>
                                                            <li><a href="#">Nẹp nhựa </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image">
                                                        <img class="img-responsive"
                                                             src="assets/images/sliders/slider3.png" alt="logo"
                                                             style=" max-width: 105%; height: 150px;">
                                                    </div>
                                                    <!-- /.yamm-content -->
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="hotdeal.jsp">Hot Deal <span
                                            class="menu-label hot-menu hidden-xs">hot</span> </a>
                                </li>
                                <li class="dropdown"> <a href="blog.jsp">blog</a>
                                </li>
                                <li class="dropdown"> <a href="hangmoi.jsp">hàng mới <span
                                        class="menu-label new-menu hidden-xs">new</span></a> </li>
                                <li class="dropdown"> <a href="lienhe.jsp">Liên hệ</a> </li>

                            </ul>
                            <!-- /.navbar-nav -->
                            <div class="clearfix"></div>
                        </div>
                        <!-- /.nav-outer -->
                    </div>
                    <!-- /.navbar-collapse -->

                </div>
                <!-- /.nav-bg-class -->
            </div>
            <!-- /.navbar-default -->
        </div>
        <!-- /.container-class -->

    </div>
    <!-- /.header-nav -->
    <!-- ============================================== NAVBAR : END ============================================== -->

</header>

<!-- ============================================== HEADER : END ============================================== -->

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
    <div class="container">
        <div class="breadcrumb-inner">
            <ul class="list-inline list-unstyled">
                <li><a href="#">Trang chủ</a></li>
                <li style="width: 130px;"><a href="#">Chi tiết sản phẩm</a></li>
                <li class='active' style="width: 130px;">Xi măng Hà Tiên</li>
            </ul>
        </div><!-- /.breadcrumb-inner -->
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
    <div class='container'>
        <div class='row single-product'>
            <div class='col-md-3 sidebar'>
                <div class="sidebar-module-container">

                    <!-- ============================================== HOT DEALS ============================================== -->
                    <div class="sidebar-widget hot-deals wow fadeInUp outer-bottom-xs">
                        <h3 class="section-title">Đang giảm giá</h3>
                        <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-ss">
                            <div class="item">
                                <div class="products">
                                    <div class="hot-deal-wrapper">
                                        <div class="image"> <img src="assets/images/hot-deals/hot1.jpg" alt="">
                                        </div>
                                        <div class="sale-offer-tag"><span>34%<br>
                                                    off</span></div>
                                        <div class="timing-wrapper">
                                            <div class="box-wrapper">
                                                <div class="date box"> <span class="key">120</span> <span
                                                        class="value">Days</span> </div>
                                            </div>
                                            <div class="box-wrapper">
                                                <div class="hour box"> <span class="key">20</span> <span
                                                        class="value">HRS</span> </div>
                                            </div>
                                            <div class="box-wrapper">
                                                <div class="minutes box"> <span class="key">36</span> <span
                                                        class="value">MINS</span> </div>
                                            </div>
                                            <div class="box-wrapper hidden-md">
                                                <div class="seconds box"> <span class="key">60</span> <span
                                                        class="value">SEC</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.hot-deal-wrapper -->

                                    <div class="product-info text-left m-t-20">
                                        <h3 class="name"><a href="chitietsanpham.jsp">Bê Tông Cống tròn D300</a>
                                        </h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="product-price"> <span class="price"> 1.200.000đ </span> <span
                                                class="price-before-discount">1.620.000đ</span> </div>
                                        <!-- /.product-price -->

                                    </div>
                                    <!-- /.product-info -->

                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <div class="add-cart-button btn-group">
                                                <button class="btn btn-primary icon" data-toggle="dropdown"
                                                        type="button">
                                                    <i class="fa fa-shopping-cart"></i> </button>
                                                <button class="btn btn-primary cart-btn" type="button">Thêm vào giỏ
                                                    hàng</button>
                                            </div>
                                        </div>
                                        <!-- /.action -->
                                    </div>
                                    <!-- /.cart -->
                                </div>
                            </div>
                            <div class="item">
                                <div class="products">
                                    <div class="hot-deal-wrapper">
                                        <div class="image"> <img src="assets/images//hot-deals/hot2.jpeg" alt="">
                                        </div>
                                        <div class="sale-offer-tag"><span>50%<br>
                                                    off</span></div>
                                        <div class="timing-wrapper">
                                            <div class="box-wrapper">
                                                <div class="date box"> <span class="key">120</span> <span
                                                        class="value">DAYS</span> </div>
                                            </div>
                                            <div class="box-wrapper">
                                                <div class="hour box"> <span class="key">20</span> <span
                                                        class="value">HRS</span> </div>
                                            </div>
                                            <div class="box-wrapper">
                                                <div class="minutes box"> <span class="key">36</span> <span
                                                        class="value">MINS</span> </div>
                                            </div>
                                            <div class="box-wrapper hidden-md">
                                                <div class="seconds box"> <span class="key">60</span> <span
                                                        class="value">SEC</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.hot-deal-wrapper -->

                                    <div class="product-info text-left m-t-20">
                                        <h3 class="name"><a href="chitietsanpham.jsp">Cửa gỗ nhựa composite KOS
                                            49</a></h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="product-price"> <span class="price"> 2.500.000đ </span> <span
                                                class="price-before-discount">4.200.000đ</span> </div>
                                        <!-- /.product-price -->

                                    </div>
                                    <!-- /.product-info -->

                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <div class="add-cart-button btn-group">
                                                <button class="btn btn-primary icon" data-toggle="dropdown"
                                                        type="button">
                                                    <i class="fa fa-shopping-cart"></i> </button>
                                                <button class="btn btn-primary cart-btn" type="button">Thêm vào giỏ
                                                    hàng</button>
                                            </div>
                                        </div>
                                        <!-- /.action -->
                                    </div>
                                    <!-- /.cart -->
                                </div>
                            </div>
                            <div class="item">
                                <div class="products">
                                    <div class="hot-deal-wrapper">
                                        <div class="image"> <img src="assets/images/hot-deals/hot3.jpeg"> </div>
                                        <div class="sale-offer-tag"><span>35%<br>
                                                    off</span></div>
                                        <div class="timing-wrapper">
                                            <div class="box-wrapper">
                                                <div class="date box"> <span class="key">120</span> <span
                                                        class="value">Days</span> </div>
                                            </div>
                                            <div class="box-wrapper">
                                                <div class="hour box"> <span class="key">20</span> <span
                                                        class="value">HRS</span> </div>
                                            </div>
                                            <div class="box-wrapper">
                                                <div class="minutes box"> <span class="key">36</span> <span
                                                        class="value">MINS</span> </div>
                                            </div>
                                            <div class="box-wrapper hidden-md">
                                                <div class="seconds box"> <span class="key">60</span> <span
                                                        class="value">SEC</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.hot-deal-wrapper -->

                                    <div class="product-info text-left m-t-20">
                                        <h3 class="name"><a href="chitietsanpham.jsp">
                                            Cửa gỗ nhựa composite KOS 1602</a></h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="product-price"> <span class="price"> 1.400.000đ </span> <span
                                                class="price-before-discount">2.800.000đ</span> </div>
                                        <!-- /.product-price -->

                                    </div>
                                    <!-- /.product-info -->

                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <div class="add-cart-button btn-group">
                                                <button class="btn btn-primary icon" data-toggle="dropdown"
                                                        type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                <button class="btn btn-primary cart-btn" type="button">Thêm vào giỏ
                                                    hàng</button>
                                            </div>
                                        </div>
                                        <!-- /.action -->
                                    </div>
                                    <!-- /.cart -->
                                </div>
                            </div>

                        </div>
                        <!-- /.sidebar-widget -->
                    </div>
                    <!-- ============================================== HOT DEALS: END ============================================== -->

                    <!-- ============================================== NEWSLETTER ============================================== -->
                    <div class="sidebar-widget newsletter wow fadeInUp outer-bottom-small">
                        <h3 class="section-title">Tin tức</h3>
                        <div class="sidebar-widget-body outer-top-xs">
                            <p>Đặt hàng để nhận tin</p>
                            <form>
                                <div class="form-group">
                                    <label class="sr-only" for="exampleInputEmail1">Email</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1"
                                           placeholder="Đặt hàng...">
                                </div>
                                <button class="btn btn-primary">Đặt hàng</button>
                            </form>
                        </div>
                        <!-- /.sidebar-widget-body -->
                    </div><!-- /.sidebar-widget -->
                    <!-- ============================================== NEWSLETTER: END ============================================== -->

                    <!-- ============================================== Testimonials============================================== -->
                    <div class="sidebar-widget  wow fadeInUp outer-top-vs ">
                        <div id="advertisement" class="advertisement">
                            <div class="item">
                                <div class="avatar"><img src="assets\images\testimonials\member1.png" alt="Image">
                                </div>
                                <div class="testimonials"><em>"</em> Sản phẩm đẹp, chất lượng, giao hàng nhanh,
                                    giống với hình, khá ưng ý, sẽ ủng hộ shop và tin tưởng shop.<em>"</em></div>
                                <div class="clients_author"><span>Abc Company</span> </div>
                                <!-- /.container-fluid -->
                            </div>
                            <!-- /.item -->

                            <div class="item">
                                <div class="avatar"><img src="assets\images\testimonials\member3.png" alt="Image">
                                </div>
                                <div class="testimonials"><em>"</em>Sản phẩm đẹp, chất lượng, giao hàng nhanh, giống
                                    với hình, khá ưng ý, sẽ ủng hộ shop và tin tưởng shop.<em>"</em></div>
                                <div class="clients_author"><span>Xperia Designs</span> </div>
                            </div>
                            <!-- /.item -->

                            <div class="item">
                                <div class="avatar"><img src="assets\images\testimonials\member2.png" alt="Image">
                                </div>
                                <div class="testimonials"><em>"</em> Sản phẩm đẹp, chất lượng, giao hàng nhanh,
                                    giống với hình, khá ưng ý, sẽ ủng hộ shop và tin tưởng shop.<em>"</em></div>
                                <div class="clients_author">Nguyễn Hoàng Minh <span>Datsun &amp; Co</span> </div>
                                <!-- /.container-fluid -->
                            </div>
                            <!-- /.item -->

                        </div>
                        <!-- /.owl-carousel -->
                    </div>

                    <!-- ============================================== Testimonials: END ============================================== -->



                </div>
            </div><!-- /.sidebar -->
            <div class='col-md-9'>
                <div class="detail-block">
                    <div class="row  wow fadeInUp">

                        <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
                            <div class="product-item-holder size-big single-product-gallery small-gallery">

                                <div id="owl-single-product">
                                    <div class="single-product-gallery-item" id="slide1">
                                        <a data-lightbox="image-1" data-title="Gallery"
                                           href="assets/images/products/vatlieutho/ximang/p1.png">
                                            <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                 data-echo="assets/images/products/vatlieutho/ximang/p1.png">
                                        </a>
                                    </div><!-- /.single-product-gallery-item -->

                                    <div class="single-product-gallery-item" id="slide2">
                                        <a data-lightbox="image-1" data-title="Gallery"
                                           href="assets/images/products/vatlieutho/ximang/p1.png">
                                            <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                 data-echo="assets/images/products/vatlieutho/ximang/p1.png">
                                        </a>
                                    </div><!-- /.single-product-gallery-item -->

                                    <div class="single-product-gallery-item" id="slide3">
                                        <a data-lightbox="image-1" data-title="Gallery"
                                           href="assets/images/products/vatlieutho/ximang/p1.png">
                                            <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                 data-echo="assets/images/products/vatlieutho/ximang/p1.png">
                                        </a>
                                    </div><!-- /.single-product-gallery-item -->

                                    <div class="single-product-gallery-item" id="slide4">
                                        <a data-lightbox="image-1" data-title="Gallery"
                                           href="assets/images/products/vatlieutho/ximang/p1.png">
                                            <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                 data-echo="assets/images/products/vatlieutho/ximang/p1.png">
                                        </a>
                                    </div><!-- /.single-product-gallery-item -->

                                    <div class="single-product-gallery-item" id="slide5">
                                        <a data-lightbox="image-1" data-title="Gallery"
                                           href="assets/images/products/vatlieutho/ximang/p1.png">
                                            <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                 data-echo="assets/images/products/vatlieutho/ximang/p1.png">
                                        </a>
                                    </div><!-- /.single-product-gallery-item -->

                                    <div class="single-product-gallery-item" id="slide6">
                                        <a data-lightbox="image-1" data-title="Gallery"
                                           href="assets/images/products/vatlieutho/ximang/p1.png">
                                            <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                 data-echo="assets/images/products/vatlieutho/ximang/p1.png">
                                        </a>
                                    </div><!-- /.single-product-gallery-item -->


                                </div><!-- /.single-product-slider -->


                                <div class="single-product-gallery-thumbs gallery-thumbs">

                                    <div id="owl-single-product-thumbnails">
                                        <div class="item">
                                            <a class="horizontal-thumb active" data-target="#owl-single-product"
                                               data-slide="1" href="#slide1">
                                                <img class="img-responsive" width="85" alt=""
                                                     src="assets/images/blank.gif"
                                                     data-echo="assets/images/products/p17.jpg">
                                            </a>
                                        </div>

                                        <div class="item">
                                            <a class="horizontal-thumb" data-target="#owl-single-product"
                                               data-slide="2" href="#slide2">
                                                <img class="img-responsive" width="85" alt=""
                                                     src="assets/images/blank.gif"
                                                     data-echo="assets/images/products/p18.jpg">
                                            </a>
                                        </div>
                                        <div class="item">

                                            <a class="horizontal-thumb" data-target="#owl-single-product"
                                               data-slide="3" href="#slide3">
                                                <img class="img-responsive" width="85" alt=""
                                                     src="assets/images/blank.gif"
                                                     data-echo="assets/images/products/p19.jpg">
                                            </a>
                                        </div>
                                        <div class="item">

                                            <a class="horizontal-thumb" data-target="#owl-single-product"
                                               data-slide="4" href="#slide4">
                                                <img class="img-responsive" width="85" alt=""
                                                     src="assets/images/blank.gif"
                                                     data-echo="assets/images/products/p20.jpg">
                                            </a>
                                        </div>
                                        <div class="item">

                                            <a class="horizontal-thumb" data-target="#owl-single-product"
                                               data-slide="5" href="#slide5">
                                                <img class="img-responsive" width="85" alt=""
                                                     src="assets/images/blank.gif"
                                                     data-echo="assets/images/products/p21.jpg">
                                            </a>
                                        </div>
                                        <div class="item">

                                            <a class="horizontal-thumb" data-target="#owl-single-product"
                                               data-slide="6" href="#slide6">
                                                <img class="img-responsive" width="85" alt=""
                                                     src="assets/images/blank.gif"
                                                     data-echo="assets/images/products/p22.jpg">
                                            </a>
                                        </div>
                                        <div class="item">

                                            <a class="horizontal-thumb" data-target="#owl-single-product"
                                               data-slide="7" href="#slide7">
                                                <img class="img-responsive" width="85" alt=""
                                                     src="assets/images/blank.gif"
                                                     data-echo="assets/images/products/p23.jpg">
                                            </a>
                                        </div>
                                        <div class="item">

                                            <a class="horizontal-thumb" data-target="#owl-single-product"
                                               data-slide="8" href="#slide8">
                                                <img class="img-responsive" width="85" alt=""
                                                     src="assets/images/blank.gif"
                                                     data-echo="assets/images/products/p24.jpg">
                                            </a>
                                        </div>
                                        <div class="item">

                                            <a class="horizontal-thumb" data-target="#owl-single-product"
                                               data-slide="9" href="#slide9">
                                                <img class="img-responsive" width="85" alt=""
                                                     src="assets/images/blank.gif"
                                                     data-echo="assets/images/products/p25.jpg">
                                            </a>
                                        </div>
                                    </div><!-- /#owl-single-product-thumbnails -->



                                </div><!-- /.gallery-thumbs -->

                            </div><!-- /.single-product-gallery -->
                        </div><!-- /.gallery-holder -->
                        <div class='col-sm-6 col-md-7 product-info-block'>
                            <div class="product-info">
                                <h1 class="name">Xi Măng Vicem Hà Tiên Đa Dụng</h1>

                                <div class="rating-reviews m-t-20">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <div class="rating rateit-small"></div>
                                        </div>
                                        <div class="col-sm-8">
                                            <div class="reviews">
                                                <a href="#" class="lnk">(12 đánh giá)</a>
                                            </div>
                                        </div>
                                    </div><!-- /.row -->
                                </div><!-- /.rating-reviews -->

                                <div class="stock-container info-container m-t-10">
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <div class="stock-box">
                                                <span class="label">Trạng thái :</span>
                                            </div>
                                        </div>
                                        <div class="col-sm-9">
                                            <div class="stock-box">
                                                <span class="value">Còn hàng</span>
                                            </div>
                                        </div>
                                    </div><!-- /.row -->
                                </div><!-- /.stock-container -->

                                <div class="description-container m-t-20">
                                    Xi Măng Vicem Hà Tiên Đa Dụng được đóng bao 50kg và có các loại vỏ bao: PP, PK,
                                    KPK, bao giấy (tùy theo địa bàn). Tất cả các nhà máy xi măng của Vicem Hà Tiên
                                    đều sản xuất được sản phẩm xi măng đa dụng với chất lượng chuẩn hóa đồng nhất.
                                    Sản phẩm được phân phối qua hệ thống phân phối hiện có của Hà Tiên, có bán tại
                                    các cửa hàng vật liệu xây dựng kể từ ngày 29 tháng 03 năm 2012
                                </div><!-- /.description-container -->

                                <div class="price-container info-container m-t-20">
                                    <div class="row">


                                        <div class="col-sm-6">
                                            <div class="price-box">
                                                <span class="price">84.000đ</span>
                                                <span class="price-strike">90.000đ</span>
                                            </div>
                                        </div>

                                        <div class="col-sm-6">
                                            <div class="favorite-button m-t-10">
                                                <a class="btn btn-primary" data-toggle="tooltip"
                                                   data-placement="right" title="Yêu Thích" href="#">
                                                    <i class="fa fa-heart"></i>
                                                </a>
                                                <a class="btn btn-primary" data-toggle="tooltip"
                                                   data-placement="right" title="So Sánh" href="#">
                                                    <i class="fa fa-signal"></i>
                                                </a>
                                                <a class="btn btn-primary" data-toggle="tooltip"
                                                   data-placement="right" title="E-mail" href="#">
                                                    <i class="fa fa-envelope"></i>
                                                </a>
                                            </div>
                                        </div>

                                    </div><!-- /.row -->
                                </div><!-- /.price-container -->

                                <div class="quantity-container info-container">
                                    <div class="row">

                                        <div class="col-sm-2">
                                            <span class="label">Số lượng</span>
                                        </div>

                                        <div class="col-sm-2">
                                            <div class="cart-quantity">
                                                <div class="quant-input">
                                                    <div class="arrows">
                                                        <div class="arrow plus gradient"><span class="ir"><i
                                                                class="icon fa fa-sort-asc"></i></span></div>
                                                        <div class="arrow minus gradient"><span class="ir"><i
                                                                class="icon fa fa-sort-desc"></i></span></div>
                                                    </div>
                                                    <input type="text" value="1">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-7">
                                            <a href="#" class="btn btn-primary"><i
                                                    class="fa fa-shopping-cart inner-right-vs"></i> Thêm vào giỏ
                                                hàng</a>
                                        </div>


                                    </div><!-- /.row -->
                                </div><!-- /.quantity-container -->






                            </div><!-- /.product-info -->
                        </div><!-- /.col-sm-7 -->
                    </div><!-- /.row -->
                </div>

                <div class="product-tabs inner-bottom-xs  wow fadeInUp">
                    <div class="row">
                        <div class="col-sm-3">
                            <ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
                                <li class="active"><a data-toggle="tab" href="#description">Mô tả</a></li>
                                <li><a data-toggle="tab" href="#specifications">Quy cách</a></li>
                                <li><a data-toggle="tab" href="#careinstruction">HD bảo quản</a></li>
                                <li><a data-toggle="tab" href="#review">Đánh giá</a></li>
                            </ul><!-- /.nav-tabs #product-tabs -->
                        </div>
                        <div class="col-sm-9">

                            <div class="tab-content">

                                <div id="description" class="tab-pane in active">
                                    <div class="product-tab">
                                        <p class="text">Với mục tiêu tham vọng chiếm lĩnh thị trường – Lớn mạnh và
                                            vững mạnh, Vicem Hà Tiên luôn tìm hiểu và học hỏi từ các nước có ngành
                                            sản xuất xi măng hàng đầu với mục đích hoàn thiện các dòng sản phẩm mới
                                            đáp ứng nhu cầu thị trường. Với phương châm các dòng sản phẩm mới này sẽ
                                            mãi " thách thức thời gian "

                                            Vì vậy Xi Măng Vicem Hà Tiên Đa Dụng ra đời với yêu cầu đổ bê tông móng,
                                            sàn, cột, đà HOẶC trộn vữa xây, vữa tô HOẶC ốp gạch đá HOẶC cán nền tất
                                            cả trong một sản phẩm. Xi Măng Vicem Hà Tiên Đa Dụng được sản xuất theo
                                            TCVN 6260:2009 PCB40, cũng phù hợp với Tiêu chuẩn Mỹ ASTM C1157, với
                                            cường độ nén R28 ≥ 40Mpa.
                                        </p>
                                    </div>
                                </div><!-- /.tab-pane -->

                                <div id="review" class="tab-pane">
                                    <div class="product-tab">

                                        <div class="product-reviews">
                                            <h4 class="title">Đánh giá khách hàng</h4>

                                            <div class="reviews">
                                                <div class="review">
                                                    <div class="review-title"><span class="summary">Sản phẩm quá
                                                                tốt</span><span class="date"><i
                                                            class="fa fa-calendar"></i><span>1 ngày
                                                                    trước</span></span></div>
                                                    <div class="text">Sản phẩm đã giúp chúng tôi có 1 sân vườn oke
                                                        yeah yea</div>
                                                </div>

                                            </div><!-- /.reviews -->
                                        </div><!-- /.product-reviews -->



                                        <div class="product-add-review">
                                            <h4 class="title">Cho tôi biết cảm giác của bạn</h4>
                                            <div class="review-table">
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <thead>
                                                        <tr>
                                                            <th class="cell-label">&nbsp;</th>
                                                            <th>1 sao</th>
                                                            <th>2 sao</th>
                                                            <th>3 sao</th>
                                                            <th>4 sao</th>
                                                            <th>5 sao</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <td class="cell-label">Chất lượng</td>
                                                            <td><input type="radio" name="quality" class="radio"
                                                                       value="1"></td>
                                                            <td><input type="radio" name="quality" class="radio"
                                                                       value="2"></td>
                                                            <td><input type="radio" name="quality" class="radio"
                                                                       value="3"></td>
                                                            <td><input type="radio" name="quality" class="radio"
                                                                       value="4"></td>
                                                            <td><input type="radio" name="quality" class="radio"
                                                                       value="5"></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="cell-label">Giá</td>
                                                            <td><input type="radio" name="quality" class="radio"
                                                                       value="1"></td>
                                                            <td><input type="radio" name="quality" class="radio"
                                                                       value="2"></td>
                                                            <td><input type="radio" name="quality" class="radio"
                                                                       value="3"></td>
                                                            <td><input type="radio" name="quality" class="radio"
                                                                       value="4"></td>
                                                            <td><input type="radio" name="quality" class="radio"
                                                                       value="5"></td>
                                                        </tr>
                                                        </tbody>
                                                    </table><!-- /.table .table-bordered -->
                                                </div><!-- /.table-responsive -->
                                            </div><!-- /.review-table -->

                                            <div class="review-form">
                                                <div class="form-container">
                                                    <form role="form" class="cnt-form">

                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="exampleInputName">Họ tên <span
                                                                            class="astk">*</span></label>
                                                                    <input type="text" class="form-control txt"
                                                                           id="exampleInputName" placeholder="">
                                                                </div><!-- /.form-group -->
                                                                <div class="form-group">
                                                                    <label for="exampleInputSummary">Tiêu đề <span
                                                                            class="astk">*</span></label>
                                                                    <input type="text" class="form-control txt"
                                                                           id="exampleInputSummary" placeholder="">
                                                                </div><!-- /.form-group -->
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="exampleInputReview">Đánh giá <span
                                                                            class="astk">*</span></label>
                                                                    <textarea class="form-control txt txt-review"
                                                                              id="exampleInputReview" rows="4"
                                                                              placeholder=""></textarea>
                                                                </div><!-- /.form-group -->
                                                            </div>
                                                        </div><!-- /.row -->

                                                        <div class="action text-right">
                                                            <button class="btn btn-primary btn-upper">Gửi đánh
                                                                giá</button>
                                                        </div><!-- /.action -->

                                                    </form><!-- /.cnt-form -->
                                                </div><!-- /.form-container -->
                                            </div><!-- /.review-form -->

                                        </div><!-- /.product-add-review -->

                                    </div><!-- /.product-tab -->
                                </div><!-- /.tab-pane -->

                                <div id="specifications" class="tab-pane">
                                    <div class="product-tag">

                                        <p><b class="cc" style="display: inline-block;
											min-width: 100px;">Sản phẩm</b>Vật Liệu Thô </p>
                                        <p><b class="cc" style="display: inline-block;
											min-width: 100px;">Bộ sưu tập</b> Xi măng</p>
                                        <p><b class="cc" style="display: inline-block;
											min-width: 100px;">Kích cỡ</b> H75xDia80</p>
                                        <p><b class="cc" style="display: inline-block;
											min-width: 100px;">Màu sắc</b> Black-Dark-wood</p>
                                        <p><b class="cc" style="display: inline-block;
											min-width: 100px;">Chất liệu</b> Xi măng
                                            Xuất xứ Việt Nam
                                            Đơn vị PCS</p>
                                        <p><b class="cc" style="display: inline-block;
											min-width: 100px;">Xuất xứ</b> Việt Nam</p>
                                        <p><b class="cc" style="display: inline-block;
											min-width: 100px;">Đơn vị </b> Vicem Hà Tiên</p>
                                    </div><!-- /.product-tab -->
                                </div><!-- /.tab-pane -->
                                <div id="careinstruction" class="tab-pane">
                                    <div class="product-tag">
                                        <ol>
                                            <li>
                                                <p>Tránh va đập mạnh</p>
                                            </li>
                                            <li>
                                                <p>Tránh để nơi ẩm ướt</p>
                                            </li>
                                            <li>
                                                <p>Không để những chỗ sắt nhọn</p>
                                            </li>
                                            <li>
                                                <p>Tránh tiếp xúc với nhiệt độ cao</p>
                                            </li>
                                        </ol>


                                    </div><!-- /.product-tab -->
                                </div><!-- /.tab-pane -->
                            </div><!-- /.tab-content -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.product-tabs -->

                <!-- ============================================== UPSELL PRODUCTS ============================================== -->
                <section class="section featured-product wow fadeInUp">
                    <h3 class="section-title">Sản phẩm yêu thích</h3>
                    <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
                        <div class="item item-carousel">
                            <div class="products">
                                <div class="product">
                                    <div class="product-image">
                                        <div class="image"> <a href="chitietsanpham.jsp"><img
                                                src="assets/images/products/gachoplat/p1.jpg" alt=""></a> </div>
                                        <!-- /.image -->

                                        <div class="tag hot"><span>hot</span></div>
                                    </div>
                                    <!-- /.product-image -->

                                    <div class="product-info text-left">
                                        <h3 class="name"><a href="chitietsanpham.jsp">Gạch ốp lát Eurotile BST Đan
                                            Vi
                                            600*600mm DAV-H04</a></h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="description"></div>
                                        <div class="product-price"> <span class="price">420.850đ </span> <span
                                                class="price-before-discount">500.000đ</span> </div>
                                        <!-- /.product-price -->

                                    </div>
                                    <!-- /.product-info -->
                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <ul class="list-unstyled">
                                                <li class="add-cart-button btn-group">
                                                    <button class="btn btn-primary icon" data-toggle="dropdown"
                                                            type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                    <button class="btn btn-primary cart-btn" type="button">Thêm vào
                                                        giỏ hàng</button>
                                                </li>
                                                <li class="lnk wishlist"> <a class="add-to-cart"
                                                                             href="chitietsanpham.jsp" title="Wishlist"> <i
                                                        class="icon fa fa-heart"></i> </a>
                                                </li>
                                                <li class="lnk"> <a class="add-to-cart" href="chitietsanpham.jsp"
                                                                    title="Compare"> <i class="fa fa-signal"
                                                                                        aria-hidden="true"></i> </a> </li>
                                            </ul>
                                        </div>
                                        <!-- /.action -->
                                    </div>
                                    <!-- /.cart -->
                                </div>
                                <!-- /.product -->

                            </div>
                            <!-- /.products -->
                        </div>
                        <!-- /.item -->

                        <div class="item item-carousel">
                            <div class="products">
                                <div class="product">
                                    <div class="product-image">
                                        <div class="image"> <a href="chitietsanpham.jsp"><img
                                                src="assets/images/products/gachoplat/p2.jpg" alt=""></a> </div>
                                        <!-- /.image -->

                                        <div class="tag new"><span>mới</span></div>
                                    </div>
                                    <!-- /.product-image -->

                                    <div class="product-info text-left">
                                        <h3 class="name"><a href="chitietsanpham.jsp">Gạch ốp lát Eurotile BST Đan
                                            Vi
                                            600*600mm DAV-H03</a></h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="description"></div>
                                        <div class="product-price"> <span class="price"> 420.850đ </span> <span
                                                class="price-before-discount">500.000đ</span> </div>
                                        <!-- /.product-price -->

                                    </div>
                                    <!-- /.product-info -->
                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <ul class="list-unstyled">
                                                <li class="add-cart-button btn-group">
                                                    <button class="btn btn-primary icon" data-toggle="dropdown"
                                                            type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                    <button class="btn btn-primary cart-btn" type="button">Thêm vào
                                                        giỏ hàng</button>
                                                </li>
                                                <li class="lnk wishlist"> <a class="add-to-cart"
                                                                             href="chitietsanpham.jsp" title="Wishlist"> <i
                                                        class="icon fa fa-heart"></i> </a>
                                                </li>
                                                <li class="lnk"> <a class="add-to-cart" href="chitietsanpham.jsp"
                                                                    title="Compare"> <i class="fa fa-signal"
                                                                                        aria-hidden="true"></i> </a> </li>
                                            </ul>
                                        </div>
                                        <!-- /.action -->
                                    </div>
                                    <!-- /.cart -->
                                </div>
                                <!-- /.product -->

                            </div>
                            <!-- /.products -->
                        </div>
                        <!-- /.item -->

                        <div class="item item-carousel">
                            <div class="products">
                                <div class="product">
                                    <div class="product-image">
                                        <div class="image"> <a href="chitietsanpham.jsp"><img
                                                src="assets/images/products/gachoplat/p3.jpg"
                                                data-echo="assets/images/products/gachoplat/p3.jpg" alt=""></a>
                                        </div>
                                        <!-- /.image -->

                                        <div class="tag sale"><span>sale</span></div>
                                    </div>
                                    <!-- /.product-image -->

                                    <div class="product-info text-left">
                                        <h3 class="name"><a href="chitietsanpham.jsp">Gạch ốp lát Eurotile BST Đan
                                            Vi
                                            600*600mm DAV-H06 </a></h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="description"></div>
                                        <div class="product-price"> <span class="price"> 420.850đ </span> <span
                                                class="price-before-discount">500.000đ</span> </div>
                                        <!-- /.product-price -->

                                    </div>
                                    <!-- /.product-info -->
                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <ul class="list-unstyled">
                                                <li class="add-cart-button btn-group">
                                                    <button class="btn btn-primary icon" data-toggle="dropdown"
                                                            type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                    <button class="btn btn-primary cart-btn" type="button">Thêm vào
                                                        giỏ hàng</button>
                                                </li>
                                                <li class="lnk wishlist"> <a class="add-to-cart"
                                                                             href="chitietsanpham.jsp" title="Wishlist"> <i
                                                        class="icon fa fa-heart"></i> </a>
                                                </li>
                                                <li class="lnk"> <a class="add-to-cart" href="chitietsanpham.jsp"
                                                                    title="Compare"> <i class="fa fa-signal"
                                                                                        aria-hidden="true"></i> </a> </li>
                                            </ul>
                                        </div>
                                        <!-- /.action -->
                                    </div>
                                    <!-- /.cart -->
                                </div>
                                <!-- /.product -->

                            </div>
                            <!-- /.products -->
                        </div>
                        <!-- /.item -->

                        <div class="item item-carousel">
                            <div class="products">
                                <div class="product">
                                    <div class="product-image">
                                        <div class="image"> <a href="chitietsanpham.jsp"><img
                                                src="assets/images/products/vatlieutho/ximang/haivan.png"
                                                alt=""></a> </div>
                                        <!-- /.image -->

                                        <div class="tag hot"><span>hot</span></div>
                                    </div>
                                    <!-- /.product-image -->

                                    <div class="product-info text-left">
                                        <h3 class="name"><a href="chitietsanpham.jsp">Xi măng Hải Vân</a></h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="description"></div>
                                        <div class="product-price"> <span class="price"> 85.000đ </span> <span
                                                class="price-before-discount">90.000đ</span> </div>
                                        <!-- /.product-price -->

                                    </div>
                                    <!-- /.product-info -->
                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <ul class="list-unstyled">
                                                <li class="add-cart-button btn-group">
                                                    <button class="btn btn-primary icon" data-toggle="dropdown"
                                                            type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                    <button class="btn btn-primary cart-btn" type="button">Thêm vào
                                                        giỏ hàng</button>
                                                </li>
                                                <li class="lnk wishlist"> <a class="add-to-cart"
                                                                             href="chitietsanpham.jsp" title="Wishlist"> <i
                                                        class="icon fa fa-heart"></i> </a>
                                                </li>
                                                <li class="lnk"> <a class="add-to-cart" href="chitietsanpham.jsp"
                                                                    title="Compare"> <i class="fa fa-signal"
                                                                                        aria-hidden="true"></i> </a> </li>
                                            </ul>
                                        </div>
                                        <!-- /.action -->
                                    </div>
                                    <!-- /.cart -->
                                </div>
                                <!-- /.product -->

                            </div>
                            <!-- /.products -->
                        </div>
                        <!-- /.item -->

                        <div class="item item-carousel">
                            <div class="products">
                                <div class="product">
                                    <div class="product-image">
                                        <div class="image"> <a href="chitietsanpham.jsp"><img
                                                src="assets/images/products/vatlieutho/satthep/thepgocL40.png"
                                                alt=""></a> </div>
                                        <!-- /.image -->

                                        <div class="tag new"><span>mới</span></div>
                                    </div>
                                    <!-- /.product-image -->

                                    <div class="product-info text-left">
                                        <h3 class="name"><a href="chitietsanpham.jsp">Thép Góc L40</a></h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="description"></div>
                                        <div class="product-price"> <span class="price"> 320.000đ </span> <span
                                                class="price-before-discount">380.000đ</span> </div>
                                        <!-- /.product-price -->

                                    </div>
                                    <!-- /.product-info -->
                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <ul class="list-unstyled">
                                                <li class="add-cart-button btn-group">
                                                    <button class="btn btn-primary icon" data-toggle="dropdown"
                                                            type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                    <button class="btn btn-primary cart-btn" type="button">Thêm vào
                                                        giỏ hàng</button>
                                                </li>
                                                <li class="lnk wishlist"> <a class="add-to-cart"
                                                                             href="chitietsanpham.jsp" title="Wishlist"> <i
                                                        class="icon fa fa-heart"></i> </a>
                                                </li>
                                                <li class="lnk"> <a class="add-to-cart" href="chitietsanpham.jsp"
                                                                    title="Compare"> <i class="fa fa-signal"
                                                                                        aria-hidden="true"></i> </a> </li>
                                            </ul>
                                        </div>
                                        <!-- /.action -->
                                    </div>
                                    <!-- /.cart -->
                                </div>
                                <!-- /.product -->

                            </div>
                            <!-- /.products -->
                        </div>
                        <!-- /.item -->

                        <div class="item item-carousel">
                            <div class="products">
                                <div class="product">
                                    <div class="product-image">
                                        <div class="image"> <a href="chitietsanpham.jsp"><img
                                                src="assets/images/products/vatlieutho/satthep/thepminhduc.jpg"
                                                alt=""></a> </div>
                                        <!-- /.image -->

                                        <div class="tag sale"><span>sale</span></div>
                                    </div>
                                    <!-- /.product-image -->

                                    <div class="product-info text-left">
                                        <h3 class="name"><a href="chitietsanpham.jsp">Thép Minh Đức</a></h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="description"></div>
                                        <div class="product-price"> <span class="price"> 320.000đ</span> <span
                                                class="price-before-discount">400.000đ</span> </div>
                                        <!-- /.product-price -->

                                    </div>
                                    <!-- /.product-info -->
                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <ul class="list-unstyled">
                                                <li class="add-cart-button btn-group">
                                                    <button class="btn btn-primary icon" data-toggle="dropdown"
                                                            type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                    <button class="btn btn-primary cart-btn" type="button">Thêm vào
                                                        giỏ hàng</button>
                                                </li>
                                                <li class="lnk wishlist"> <a class="add-to-cart"
                                                                             href="chitietsanpham.jsp" title="Wishlist"> <i
                                                        class="icon fa fa-heart"></i> </a>
                                                </li>
                                                <li class="lnk"> <a class="add-to-cart" href="chitietsanpham.jsp"
                                                                    title="Compare"> <i class="fa fa-signal"
                                                                                        aria-hidden="true"></i> </a> </li>
                                            </ul>
                                        </div>
                                        <!-- /.action -->
                                    </div>
                                    <!-- /.cart -->
                                </div>
                                <!-- /.product -->

                            </div>
                            <!-- /.products -->
                        </div>
                        <!-- /.item -->
                    </div>
                    <!-- /.home-owl-carousel -->
                </section><!-- /.section -->
                <!-- ============================================== UPSELL PRODUCTS : END ============================================== -->

            </div><!-- /.col -->
            <div class="clearfix"></div>
        </div><!-- /.row -->
        <!-- ============================================== BRANDS CAROUSEL ============================================== -->
        <div id="brands-carousel" class="logo-slider wow fadeInUp">

            <div class="logo-slider-inner">
                <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
                    <div class="item m-t-15">
                        <a href="#" class="image">
                            <img data-echo="assets/images/brands/brand1.png" src="assets/images/blank.gif" alt="">
                        </a>
                    </div>
                    <!--/.item-->

                    <div class="item m-t-10">
                        <a href="#" class="image">
                            <img data-echo="assets/images/brands/brand2.png" src="assets/images/blank.gif" alt="">
                        </a>
                    </div>
                    <!--/.item-->

                    <div class="item">
                        <a href="#" class="image">
                            <img data-echo="assets/images/brands/brand3.png" src="assets/images/blank.gif" alt="">
                        </a>
                    </div>
                    <!--/.item-->

                    <div class="item">
                        <a href="#" class="image">
                            <img data-echo="assets/images/brands/brand4.png" src="assets/images/blank.gif" alt="">
                        </a>
                    </div>
                    <!--/.item-->

                    <div class="item">
                        <a href="#" class="image">
                            <img data-echo="assets/images/brands/brand5.png" src="assets/images/blank.gif" alt="">
                        </a>
                    </div>
                    <!--/.item-->

                    <div class="item">
                        <a href="#" class="image">
                            <img data-echo="assets/images/brands/brand6.png" src="assets/images/blank.gif" alt="">
                        </a>
                    </div>
                    <!--/.item-->

                    <div class="item">
                        <a href="#" class="image">
                            <img data-echo="assets/images/brands/brand2.png" src="assets/images/blank.gif" alt="">
                        </a>
                    </div>
                    <!--/.item-->

                    <div class="item">
                        <a href="#" class="image">
                            <img data-echo="assets/images/brands/brand4.png" src="assets/images/blank.gif" alt="">
                        </a>
                    </div>
                    <!--/.item-->

                    <div class="item">
                        <a href="#" class="image">
                            <img data-echo="assets/images/brands/brand1.png" src="assets/images/blank.gif" alt="">
                        </a>
                    </div>
                    <!--/.item-->

                    <div class="item">
                        <a href="#" class="image">
                            <img data-echo="assets/images/brands/brand5.png" src="assets/images/blank.gif" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                </div><!-- /.owl-carousel #logo-slider -->
            </div><!-- /.logo-slider-inner -->

        </div><!-- /.logo-slider -->
        <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
    </div><!-- /.container -->
</div><!-- /.body-content -->
<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">Liên hệ</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class="toggle-footer">
                            <li class="media">
                                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i
                                        class="fa fa-map-marker fa-stack-1x fa-inverse"></i> </span> </div>
                                <div class="media-body">
                                    <p>Khu phố 6, phường Linh Trung, quận Thủ Đức, TP.HCM, Việt Nam</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i
                                        class="fa fa-mobile fa-stack-1x fa-inverse"></i> </span> </div>
                                <div class="media-body">
                                    <p>+(84)962351043<br>
                                    </p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i
                                        class="fa fa-envelope fa-stack-1x fa-inverse"></i> </span> </div>
                                <div class="media-body"> <span><a href="#">nguyenthaiduc0212@gmail.com</a></span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- /.module-body -->
                </div>
                <!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">Hỗ trợ khách hàng</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <li class="first"><a href="lienhe.jsp" title="Contact">Liên hệ đến Daisan</a></li>
                            <li><a href="huongdandathang.jsp" title="Order">Hướng dẫn đặt hàng</a></li>
                            <li><a href="cauhoithuonggap.jsp" title="FAQ">Câu hỏi thường gặp</a></li>
                            <li class="last"><a href="chinhsachvadieukhoan.jsp" title="Hỗ trợ">Chính sách và
                                quy định chung</a></li>
                        </ul>
                    </div>
                    <!-- /.module-body -->
                </div>
                <!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">Chính sách</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <li class="first"><a title="Thanh toán" href="huongdanthanhtoan.jsp">Hướng dẫn thanh
                                toán</a></li>
                            <li><a title="Bảo hành" href="chinhsachbaohanh.jsp">Chính sách bảo hành</a></li>
                            <li><a title="Chính sách đổi trả" href="chinhsachdoitra.jsp">Chính sách đổi trả</a>
                            </li>
                            <li><a title="Vận chuyển" href="chinhsachvanchuyen.jsp">Phương thức vận chuyển</a></li>
                            <li class="last"><a title="Bảo mật thông tin" href="chinhsachbaomatthongtin.jsp">Bảo
                                mật thông tin</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.module-body -->
                </div>
                <!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">Tại sao nên chọn chúng tôi</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <!-- <li class="first"><a href="#" title="About us">Shopping Guide</a></li> -->
                            <li><a href="blog.jsp" title="Blog">Blog</a></li>
                            <!-- <li><a href="#" title="Company">Công ty</a></li> -->
                            <!-- <li><a href="#" title="Investor Relations">Investor Relations</a></li> -->
                            <li class=" last"><a href="lienhe.jsp" title="Suppliers">Liên hệ</a></li>
                        </ul>

                    </div>

                    <!-- /.module-body -->
                </div>
            </div>
        </div>
    </div>
    <div class="footer-choose">
        <div class="container-fluid">
            <div class="footer-info p-3 p-md-0">
                <div class="row row-sm justify-content-center">

                    <div class="col-xl-4">
                        <p class="text-b mt-3 mt-md-0">© 2009 DAISAN.,JSC</p>
                        <p class="mb-2">Công Ty Cổ phần Đại Sàn. GPĐKKD: 0103884103 do sở KH &amp; ĐT TP Hà Nội cấp
                            lần đầu ngày
                            29/06/2009.</p>
                        <p class="mb-3">Trụ sở chính: 88 Láng Hạ, P. Láng Hạ, Q. Đống Đa, TP Hà Nội.</p>
                        <p>
                            <a href="http://online.gov.vn/Home/WebDetails/54203">
                                <img src="assets/images/tb-bct.png" height="50">
                            </a>
                            <a href="http://online.gov.vn/Home/WebDetails/54203">
                                <img src="assets/images/dk-bct.png" height="50">
                            </a>
                        </p>
                    </div>
                    <div class="col-xl-4">
                        <p class="text-b">MIỀN BẮC</p>
                        <p>Showroom: Số 40 Tố Hữu, Nhân Chính, Thanh Xuân, Hà Nội</p>
                        <p>VPGD: Tầng 4, Số 40 Tố Hữu, Nhân Chính, Thanh Xuân, Hà Nội</p>
                        <p>Email: <a href="mailto:info@daisan.vn">info@daisan.vn</a></p>
                        <p class="text-b mt-3">MIỀN NAM</p>
                        <p>VPGD: 57/1c, Khu phố 1, P. An Phú Đông, Q.12</p>
                        <a class="hide">Điện thoại: 1800 6464 98</a> Email: <a
                            href="mailto:info@daisan.vn">info@daisan.vn</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</footer>
<!-- ============================================================= FOOTER : END============================================================= -->

<!-- For demo purposes – can be removed on production -->

<!-- For demo purposes – can be removed on production : End -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/echo.min.js"></script>
<script src="assets/js/jquery.easing-1.3.min.js"></script>
<script src="assets/js/bootstrap-slider.min.js"></script>
<script src="assets/js/jquery.rateit.min.js"></script>
<script src="assets/js/bootstrap-select.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/scripts.js"></script>
</body>

</html>
