<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 7/12/2022
  Time: 8:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="MediaCenter, Template, eCommerce">
    <meta name="robots" content="all">

    <title>DAISAN | Sản Phẩm Yêu Thích</title>

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
    <link rel="icon" type="image/x-icon" href="assets/images/favicon.ico" -->
    <link rel="stylesheet" href="assets/css/font-awesome.css">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>


</head>

<body class="cnt-home">
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
                            <li><a href="thongtintaikhoan.jsp"><i class="icon fa fa-user"></i>${sessionScope.acc.name}</a>
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
                    <div class="logo"> <a href="/Home"> <img src="assets/images/daisan.png" alt="logo"
                                                                    style="height: 55px; margin-top: -10px"> </a> </div>
                <!-- /.logo -->
                <!-- ============================================================= LOGO : END ============================================================= --> </div>
            <!-- /.logo-holder -->

            <div class=" col-xs-12 col-sm-12 col-md-7 top-search-holder">
                <!-- /.contact-row -->
                <!-- ============================================================= SEARCH AREA ============================================================= -->
                <div class="search-area">
                    <form action="Search" method="get">
                        <div class="control-group">
                            <ul class="categories-filter animate-dropdown">
                                <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown"
                                                         href="">Danh mục<b class="caret"></b></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <c:forEach items="${Tag}" var="tag">
                                        <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                   href="/products?tag_ID=${tag.tag_ID}">${tag.name}</a></li>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                            <input style="height: 44.4px; border: none;width:430px " name="txt"  type="text" placeholder="Bạn muốn tìm gì đó...">
                            <button type="submit" style="margin-left: 60px; height: 40px; width: 40px"><i class="fa fa-search"></i></button>
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
                                                src="assets/images/products/gachoplat/p1.jpg"
                                                alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <h3 class="name"><a href="">Gạch ốp lát Eurotile BST Vọng Cát
                                            600*600mm VOC-H01</a>
                                        </h3>
                                        <div class="price">420.850đ</div>
                                    </div>
                                    <div class="col-xs-1 action"> <a href="#"><i
                                            class="fa fa-trash"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- /.cart-item -->
                            <div class="clearfix"></div>
                            <hr>
                            <div class="clearfix cart-total">
                                <div class="pull-right"> <span class="text">Tổng tiền :</span><span
                                        class='price'>420.850đ</span> </div>
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
                                <li class="active dropdown yamm-fw"> <a href="/Home">Trang chủ</a> </li>
                                <li class="dropdown yamm mega-menu"> <a href="#" data-hover="dropdown"
                                                                        class="dropdown-toggle" data-toggle="dropdown">Danh Mục</a>
                                    <ul class="dropdown-menu container">
                                        <li>
                                            <div class="yamm-content ">
                                                <div class="row">
                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-2 col-menu drop-height">
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

                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
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

                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
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

                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
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

                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
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
                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
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
                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
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
                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
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
                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
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
                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Nẹp</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Nẹp dán cạnh</a></li>
                                                            <li><a href="#">Nẹp đồng </a></li>
                                                            <li><a href="#">Nẹp nhôm </a></li>
                                                            <li><a href="#">Nẹp nhựa </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div
                                                            class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image">
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
<div class="breadcrumb">
    <div class="container">
        <div class="breadcrumb-inner">
            <ul class="list-inline list-unstyled">
                <li><a href="/Home">Home</a></li>
                <li class='active'>Yêu thích</li>
            </ul>
        </div><!-- /.breadcrumb-inner -->
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content">
    <div class="container">
        <div class="my-wishlist-page">
            <div class="row">
                <div class="col-md-12 my-wishlist">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th colspan="4" class="heading-title">Sản phẩm yêu thích</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="col-md-2"><img src="assets/images/products/gachoplat/p1.jpg"
                                                          alt="imga"></td>
                                <td class="col-md-7">
                                    <div class="product-name"><a href="#">Gạch ốp lát Eurotile BST Đan Vi
                                        600*600mm DAV-H04
                                    </a></div>
                                    <div class="rating">
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star non-rate"></i>
                                        <span class="review">( 06 nhận xét )</span>
                                    </div>
                                    <div class="price">
                                        420.850đ
                                        <span>500.000đ</span>
                                    </div>
                                </td>
                                <td class="col-md-2">
                                    <a href="#" class="btn-upper btn btn-primary">Thêm vào giỏ hàng</a>
                                </td>
                                <td class="col-md-1 close-btn">
                                    <a href="#" class=""><i class="fa fa-times"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td class="col-md-2"><img src="assets/images/products/gachoplat/p2.jpg"
                                                          alt="phoro"></td>
                                <td class="col-md-7">
                                    <div class="product-name"><a href="#">Gạch ốp lát Eurotile BST Đan Vi
                                        600*600mm DAV-H03</a></div>
                                    <div class="rating">
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star non-rate"></i>
                                        <span class="review">( 06 nhận xét )</span>
                                    </div>
                                    <div class="price">
                                        452.850đ
                                        <span>500.000đ</span>
                                    </div>
                                </td>
                                <td class="col-md-2">
                                    <a href="#" class="btn-upper btn btn-primary">Thêm vào giỏ hàng</a>
                                </td>
                                <td class="col-md-1 close-btn">
                                    <a href="#" class=""><i class="fa fa-times"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td class="col-md-2"><img src="assets/images/products/gachoplat/p3.jpg"
                                                          alt="img"></td>
                                <td class="col-md-7">
                                    <div class="product-name"><a href="#">Gạch ốp lát Eurotile BST Đan Vi
                                        600*600mm DAV-H06
                                    </a></div>
                                    <div class="rating">
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star non-rate"></i>
                                        <span class="review">( 06 nhận xét )</span>
                                    </div>
                                    <div class="price">
                                        452.850đ
                                        <span>500.000đ</span>
                                    </div>
                                </td>
                                <td class="col-md-2">
                                    <a href="#" class="btn-upper btn btn-primary">Thêm vào giỏ hàng</a>
                                </td>
                                <td class="col-md-1 close-btn">
                                    <a href="#" class=""><i class="fa fa-times"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td class="col-md-2"><img
                                        src="assets/images/products/vatlieutho/ximang/haivan.png" alt="imga">
                                </td>
                                <td class="col-md-7">
                                    <div class="product-name"><a href="#">Xi Măng Hải Vân
                                    </a></div>
                                    <div class="rating">
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star rate"></i>
                                        <i class="fa fa-star non-rate"></i>
                                        <span class="review">( 06 nhận xét )</span>
                                    </div>
                                    <div class="price">
                                        80.000đ
                                        <span>90.000đ</span>
                                    </div>
                                </td>
                                <td class="col-md-2">
                                    <a href="#" class="btn-upper btn btn-primary">Thêm vào giỏ hàng</a>
                                </td>
                                <td class="col-md-1 close-btn">
                                    <a href="#" class=""><i class="fa fa-times"></i></a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!-- /.row -->
        </div><!-- /.sigin-in-->
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
<!-- ============================================== HEADER : END ============================================== -->
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
                            lần đầu ngày 29/06/2009.</p>
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
<script type="text/javascript" src="assets\js\lightbox.min.js"></script>
<script src="assets/js/bootstrap-select.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/scripts.js"></script>

<!-- For demo purposes – can be removed on production -->

<script src="switchstylesheet/switchstylesheet.js"></script>

<script>
    $(document).ready(function () {
        $(".changecolor").switchstylesheet({ seperator: "color" });
        $('.show-theme-options').click(function () {
            $(this).parent().toggleClass('open');
            return false;
        });
    });

    $(window).bind("load", function () {
        $('.show-theme-options').delay(2000).trigger('click');
    });
</script>
<!-- For demo purposes – can be removed on production : End -->
</body>

</html>
