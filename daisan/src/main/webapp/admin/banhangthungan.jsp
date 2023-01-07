<%-- Created by IntelliJ IDEA. User: ACER Date: 8/12/2022 Time: 7:10 AM To change this template use File | Settings |
    File Templates. --%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title>Daisan | Bán hàng/Thu ngân</title>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc."
                        name="description">
                    <meta content="Coderthemes" name="author">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <!-- App favicon -->
                    <link rel="shortcut icon" href="assets/images/favicon.ico">

                    <!-- App css -->
                    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
                    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css">
                    <link href="assets/css/app.min.css" rel="stylesheet" type="text/css">

                </head>

                <body>

                    <!-- Begin page -->
                    <div id="wrapper">

                        <!-- Topbar Start -->
                        <div class="navbar-custom">
                            <ul class="list-unstyled topnav-menu float-right mb-0">

                                <li class="dropdown d-none d-lg-block">
                                    <a class="nav-link dropdown-toggle waves-effect waves-light" data-toggle="dropdown"
                                        href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                        Daisan
                                        <i class="mdi mdi-chevron-down"></i>
                                    </a>
                                    <div class="dropdown-menu">
                                        <!-- item-->
                                        <a href="404.jsp" class="dropdown-item">

                                            <span>Chọn cửa hàng</span>
                                        </a>

                                        <!-- item-->
                                        <a href="404.jsp" class="dropdown-item">

                                            <span>Daisan</span>
                                        </a>

                                    </div>
                                </li>



                                <li class="dropdown notification-list">
                                    <c:choose>
                                        <c:when test="${sessionScope.user != null}">
                                            <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light"
                                                data-toggle="dropdown" href="taikhoanadmin.jsp" role="button"
                                                aria-haspopup="false" aria-expanded="false">
                                                <img src="assets\images\users\duc.jpg" alt="user-image"
                                                    class="rounded-circle">
                                                <span class="pro-user-name ml-1">
                                                    ${sessionScope.user.fullname} <i class="mdi mdi-chevron-down"></i>
                                                </span>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                                <!-- item-->
                                                <a href="taikhoanadmin.jsp" class="dropdown-item notify-item">
                                                    <i class="remixicon-account-circle-line"></i>
                                                    <span>Tài khoản</span>
                                                </a>

                                                <!-- item-->
                                                <a href="404.jsp" class="dropdown-item notify-item">
                                                    <i class="remixicon-lock-unlock-line"></i>
                                                    <span>Đổi mật khẩu</span>
                                                </a>

                                                <!-- item-->
                                                <a href="404.jsp" class="dropdown-item notify-item">
                                                    <i class="remixicon-settings-3-line"></i>
                                                    <span>Cài đặt</span>
                                                </a>

                                                <div class="dropdown-divider"></div>

                                                <!-- item-->
                                                <a href="dangxuat.jsp" class="dropdown-item notify-item">
                                                    <i class="remixicon-logout-box-line"></i>
                                                    <span>Đăng xuất</span>
                                                </a>

                                            </div>
                                        </c:when>
                                        <c:when test="${sessionScope.user == null}">

                                            <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light"
                                                data-toggle="dropdown" href="taikhoanadmin.jsp" role="button"
                                                aria-haspopup="false" aria-expanded="false">

                                                <span class="pro-user-name ml-1">
                                                    Tài Khoản <i class="mdi mdi-chevron-down"></i>
                                                </span>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                                <!-- item-->
                                                <a href="dangnhap.jsp" class="dropdown-item notify-item">
                                                    <i class="remixicon-account-circle-line"></i>
                                                    <span>Đăng Nhập</span>
                                                </a>

                                                <!-- item-->
                                                <a href="dangky.jsp" class="dropdown-item notify-item">
                                                    <i class="remixicon-lock-unlock-line"></i>
                                                    <span>Đăng ký</span>
                                                </a>
                                            </div>
                                        </c:when>
                                        <c:otherwise>

                                        </c:otherwise>
                                    </c:choose>
                                </li>

                            </ul>

                            <!-- LOGO -->
                            <div class="logo-box">
                                <a href="trangchu.jsp" class="logo text-center">
                                    <span class="logo-lg">
                                        <img src="assets/images/daisan.png" alt="" height="35">
                                        <!-- <span class="logo-lg-text-light">Xeria</span> -->
                                    </span>
                                    <span class="logo-sm">
                                        <!-- <span class="logo-sm-text-dark">X</span> -->
                                        <img src="assets/images/daisan.png" alt="" height="24">
                                    </span>
                                </a>
                            </div>

                            <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
                                <li>
                                    <button class="button-menu-mobile waves-effect waves-light">
                                        <i class="fe-menu"></i>
                                    </button>
                                </li>




                            </ul>
                        </div>
                        <!-- end Topbar -->

                        <!-- ========== Left Sidebar Start ========== -->
                        <div class="left-side-menu">

                            <div class="slimscroll-menu">

                                <!--- Sidemenu -->
                                <div id="sidebar-menu">

                                    <ul class="metismenu" id="side-menu">

                                        <li class="menu-title">Daisan ADMIN</li>

                                        <li>
                                            <a href="trangchu.jsp" class="waves-effect">
                                                <i class="fas fa-home"></i>
                                                <span> Trang chủ </span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="banhangthungan.jsp" class="waves-effect">
                                                <i class="fas fa-shopping-bag"></i>
                                                <span> Bán hàng/Thu ngân </span>

                                            </a>

                                        </li>

                                        <li>
                                            <a href="javascript: void(0);" class="waves-effect">
                                                <i class="fas fa-address-book"></i>
                                                <span> Khách hàng </span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <ul class="nav-second-level" aria-expanded="false">
                                                <li>
                                                    <a href="danhsachkhachhang.jsp">Danh sách khách hàng</a>
                                                </li>
                                                <li>
                                                    <a href="chatvoikhachhang.jsp">Chat với khách hàng</a>
                                                </li>


                                            </ul>
                                        </li>

                                        <li>
                                            <a href="danhsachdonhang.jsp" class="waves-effect">
                                                <i class="fas fa-shopping-cart"></i>
                                                <span> Đơn hàng </span>

                                            </a>
                                        </li>

                                        <li>
                                            <a href="danhsachsanpham.jsp" class="waves-effect">
                                                <i class="fab fa-product-hunt"></i>
                                                <span>Sản phẩm</span>
                                                <!-- <span class="menu-arrow"></span> -->
                                            </a>

                                        </li>

                                        <li>
                                            <a href="javascript: void(0);" class="waves-effect">
                                                <i class="fa fa-user-plus"></i>
                                                <span> Cộng tác viên </span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <ul class="nav-second-level" aria-expanded="false">
                                                <li>
                                                    <a href="danhsachcongtacvien.jsp">Danh sách CTV</a>
                                                </li>

                                                <li>
                                                    <a href="baocaodoanhthuctv.html">Báo cáo doanh thu CTV</a>
                                                </li>


                                            </ul>
                                        </li>

                                        <li>
                                            <a href="javascript: void(0);" class="waves-effect">
                                                <i class="fa fa-cog"></i>
                                                <span>Cấu hình </span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <ul class="nav-second-level" aria-expanded="false">
                                                <li>
                                                    <a href="404.jsp">Sửa thông tin</a>
                                                </li>
                                                <li>
                                                    <a href="404.jsp">Cấu hình</a>
                                                </li>
                                                <li>
                                                    <a href="taikhoanadmin.jsp">Tài khoản Admin</a>
                                                </li>



                                            </ul>
                                        </li>

                                        <li>
                                            <a href="quanliblog.jsp" class="waves-effect">
                                                <i class="fas fa-newspaper"></i>

                                                <span> Blog </span>
                                                <!-- <span class="menu-arrow"></span> -->
                                            </a>

                                        </li>

                                        <li>
                                            <a href="quanlidanhmuc.jsp" class="waves-effect">
                                                <i class="fas fa-bullseye"></i>
                                                <span> Quản lý Danh Mục </span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="javascript: void(0);" class="waves-effect">
                                                <i class="fas fa-chart-bar"></i>
                                                <span> Thông tin thống kê </span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <ul class="nav-second-level" aria-expanded="false">
                                                <li>
                                                    <a href="404.jsp">Bảng tổng hợp</a>
                                                </li>
                                                <li>
                                                    <a href="dothi.jsp">Đồ thị</a>
                                                </li>
                                            </ul>
                                        </li>

                                        <li>
                                            <a href="404.jsp" class="waves-effect">
                                                <i class="fas fa-align-center"></i>
                                                <span> Lịch sử thay đổi </span>
                                            </a>

                                        </li>

                                        <li>
                                            <a href="javascript: void(0);" class="waves-effect">
                                                <i class="fas fa-th-large"></i>
                                                <span> Tiện ích khác </span>
                                                <span class="menu-arrow"></span>
                                            </a>
                                            <ul class="nav-second-level" aria-expanded="false">
                                                <li>
                                                    <a href="apps-calendar.html">Lịch</a>
                                                </li>

                                            </ul>
                                        </li>


                                    </ul>

                                </div>
                                <!-- End Sidebar -->

                                <div class="clearfix"></div>

                            </div>
                            <!-- Sidebar -left -->

                        </div>
                        <!-- Left Sidebar End -->

                        <!-- ============================================================== -->
                        <!-- Start Page Content here -->
                        <!-- ============================================================== -->

                        <div class="content-page">
                            <div class="content">

                                <!-- Start Content-->
                                <div class="container-fluid">

                                    <!-- start page title -->
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="page-title-box">
                                                <div class="page-title-right">
                                                    <ol class="breadcrumb m-0">
                                                        <li class="breadcrumb-item"><a href="trangchu.jsp">Admin</a>
                                                        </li>
                                                        <li class="breadcrumb-item active">Bán hàng/Thu ngân</li>
                                                    </ol>
                                                </div>
                                                <h4 class="page-title">QUẢN LÍ BÁN HÀNG</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end page title -->
                                    <div class="row">
                                        <div class="col-xl-3">
                                            <div class="card">
                                                <div class="card-body">


                                                    <div>
                                                        <button type="button"
                                                            class="btn btn-block btn-lg btn-primary waves-effect waves-light">ĐANG
                                                            CHỜ
                                                            DUYỆT</button>
                                                        <button type="button"
                                                            class="btn btn-block btn-lg btn-primary waves-effect waves-light">ĐÃ
                                                            PHÊ
                                                            DUYỆT</button>
                                                        <button type="button"
                                                            class="btn btn-block btn-lg btn-primary waves-effect waves-light">ĐANG
                                                            XỬ LÝ
                                                            TẠI CH</button>
                                                        <button type="button"
                                                            class="btn btn-block btn-lg btn-primary waves-effect waves-light">ĐANG
                                                            GIAO
                                                            HÀNG</button>
                                                        <button type="button"
                                                            class="btn btn-block btn-lg btn-primary waves-effect waves-light">ĐÃ
                                                            HOÀN
                                                            THÀNH</button>
                                                        <button type="button"
                                                            class="btn btn-block btn-lg btn-primary waves-effect waves-light">GIỎ
                                                            HÀNG/ĐANG ĐẶT HÀNG</button>
                                                        <button type="button"
                                                            class="btn btn-block btn-lg btn-primary waves-effect waves-light">ĐÃ
                                                            HỦY</button>

                                                    </div>
                                                </div><!-- end card-body -->
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h4 class="header-title">Đơn hàng :</h4>
                                                    <p class="note-color text-center">Mặt hàng khách chọn mua được hiển
                                                        thị tại đây <br>
                                                        (Vui lòng chọn đơn hàng)</p>

                                                </div>
                                            </div>

                                            <div class="card">
                                                <div class="card-body">


                                                    <ul class="nav nav-tabs nav-bordered">
                                                        <li class="nav-item">
                                                            <a href="#ttkh-b1" data-toggle="tab" aria-expanded="false"
                                                                class="nav-link">
                                                                <span class="d-inline-block d-sm-none"><i
                                                                        class="mdi mdi-home-variant"></i></span>
                                                                <span class="d-none d-sm-inline-block">Thông tin khách
                                                                    hàng</span>
                                                            </a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a href="#ttlh-b1" data-toggle="tab" aria-expanded="true"
                                                                class="nav-link">
                                                                <span class="d-inline-block d-sm-none"><i
                                                                        class="mdi mdi-account"></i></span>
                                                                <span class="d-none d-sm-inline-block">Thông tin liên
                                                                    hệ</span>
                                                            </a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a href="#lsgd-b1" data-toggle="tab" aria-expanded="false"
                                                                class="nav-link">
                                                                <span class="d-inline-block d-sm-none"><i
                                                                        class="mdi mdi-email-variant"></i></span>
                                                                <span class="d-none d-sm-inline-block">Lịch sử giao
                                                                    dịch</span>
                                                            </a>
                                                        </li>

                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="ttkh-b1">

                                                            <div class="col-xs-6">
                                                                <h5>Địa chỉ giao hàng</h5>
                                                                <div class="">
                                                                    <p class="sale_user_label">Người nhận: <span
                                                                            id="user_name"></span>
                                                                    </p>
                                                                    <p class="sale_user_label">Địa chỉ nhận: <span
                                                                            id="user_address"></span></p>
                                                                    <p class="sale_user_label">Điện thoại: <span
                                                                            id="user_tel"></span>
                                                                    </p>
                                                                    <p class="sale_user_label">Ghi chú: <span
                                                                            id="user_note"></span></p>
                                                                    <p class="sale_user_label">Ghi chú cửa hàng: <span
                                                                            id="site_note"></span></p>
                                                                    <p class="sale_user_label">Thanh toán:<span
                                                                            class="cart_payment_method"></span></p>
                                                                </div>
                                                            </div>


                                                        </div>
                                                        <div class="tab-pane show" id="ttlh-b1">
                                                            <form class="needs-validation" novalidate="">
                                                                <div class="form-group mb-3">
                                                                    <label for="validationCustom01">Họ Tên</label>
                                                                    <input type="text" class="form-control"
                                                                        id="validationCustom01" placeholder="Họ tên"
                                                                        required="">

                                                                </div>

                                                                <div class="form-group mb-3">
                                                                    <label for="validationCustom03">Địa chỉ</label>
                                                                    <input type="text" class="form-control"
                                                                        id="validationCustom03" placeholder="Địa chỉ"
                                                                        required="">

                                                                </div>
                                                                <div class="form-group mb-3">
                                                                    <label for="validationCustom04">Khu vực</label>
                                                                    <input type="text" class="form-control"
                                                                        id="validationCustom04" placeholder="Quận/Huyện"
                                                                        required="">

                                                                </div>
                                                                <div class="form-group mb-3">
                                                                    <label for="validationCustom05">Số điện
                                                                        thoại</label>
                                                                    <input type="text" class="form-control"
                                                                        id="validationCustom05"
                                                                        placeholder="số điện thoại" required="">

                                                                </div>

                                                            </form>
                                                        </div>
                                                        <div class="tab-pane" id="lsgd-b1">
                                                            <div class="table-responsive">
                                                                <table class="table mb-0">
                                                                    <thead class="thead-light">

                                                                        <tr>
                                                                            <th>ID</th>
                                                                            <th>Mã</th>
                                                                            <th>Trạng thái</th>
                                                                            <th>Thời điểm đặt hàng</th>
                                                                            <th>Ghi chú của Khách</th>
                                                                            <th>Ghi chú của Cửa hàng</th>
                                                                            <th>Mặt hàng</th>
                                                                            <th></th>
                                                                        </tr>

                                                                    </thead>
                                                                    <tbody>

                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div> <!-- end card -->

                                        </div>
                                        <div class="col-xl-3">
                                            <div class="card">
                                                <div class="card-body">

                                                    <p class="sale_user_label">Giá tạm tính: <span
                                                            id="total_before"></span></p>
                                                    <div id="promotion_fee"></div>
                                                    <div id="item_fee"></div>
                                                    <div>
                                                        <p class="sale_user_label">Tổng hoá đơn: <span
                                                                id="total_selected" data-total_selected="0"
                                                                data-cart-code=""></span></p>
                                                    </div>
                                                    <div id="cashback"></div>
                                                    <div>
                                                        <p class="sale_user_label">Thanh toán: <span
                                                                class="cart_payment_method"></span>
                                                        </p>
                                                    </div>

                                                </div>
                                            </div>


                                            <div class="card">
                                                <div class="card-body py-2 px-3 border-bottom border-light">
                                                    <div class="media py-1">
                                                        <img src="assets/images/users/jeff.jpg"
                                                            class="mr-2 rounded-circle" height="36" alt="Brandon Smith">
                                                        <div class="media-body">
                                                            <h5 class="mt-0 mb-0 font-15">
                                                                <a href="contacts-profile.html"
                                                                    class="text-reset">Nguyễn Văn Tèo</a>
                                                            </h5>
                                                            <p class="mt-1 mb-0 text-muted font-12">
                                                                <small class="mdi mdi-circle text-success"></small>
                                                                Online
                                                            </p>
                                                        </div>
                                                        <div>

                                                            <a href="javascript: void(0);"
                                                                class="text-reset font-19 py-1 px-2 d-inline-block"
                                                                data-toggle="tooltip" data-placement="top" title=""
                                                                data-original-title="Add Users">
                                                                <i class="fe-user-plus"></i>
                                                            </a>
                                                            <a href="javascript: void(0);"
                                                                class="text-reset font-19 py-1 px-2 d-inline-block"
                                                                data-toggle="tooltip" data-placement="top" title=""
                                                                data-original-title="Delete Chat">
                                                                <i class="fe-trash-2"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body">
                                                    <ul class="conversation-list chat-app-conversation"
                                                        data-simplebar="init" style="max-height: 460px">
                                                        <div class="simplebar-wrapper" style="margin: 0px -15px;">
                                                            <div class="simplebar-height-auto-observer-wrapper">
                                                                <div class="simplebar-height-auto-observer"></div>
                                                            </div>
                                                            <div class="simplebar-mask">
                                                                <div class="simplebar-offset"
                                                                    style="right: 0px; bottom: 0px;">
                                                                    <div class="simplebar-content-wrapper">
                                                                        <div class="simplebar-content"
                                                                            style="padding: 0px 15px;">
                                                                            <li class="clearfix">
                                                                                <div class="chat-avatar">
                                                                                    <img src="assets/images/users/elon.jpg"
                                                                                        class="rounded" alt="James Z">
                                                                                    <i>10:00</i>
                                                                                </div>
                                                                                <div class="conversation-text">
                                                                                    <div class="ctext-wrap">
                                                                                        <i>Elon Musk</i>
                                                                                        <p>
                                                                                            Shop có bán mẫu tủ nào đắt
                                                                                            sang nhất kh ạ ?
                                                                                        </p>
                                                                                    </div>
                                                                                </div>

                                                                            </li>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="simplebar-placeholder"
                                                                style="width: auto; height: 900px;">
                                                            </div>
                                                        </div>
                                                        <div class="simplebar-track simplebar-horizontal"
                                                            style="visibility: hidden;">
                                                            <div class="simplebar-scrollbar"
                                                                style="width: 0px; display: none;"></div>
                                                        </div>
                                                        <div class="simplebar-track simplebar-vertical"
                                                            style="visibility: visible;">
                                                            <div class="simplebar-scrollbar"
                                                                style="height: 235px; transform: translate3d(0px, 102px, 0px); display: block;">
                                                            </div>
                                                        </div>
                                                    </ul>

                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="mt-2 bg-light p-3 rounded">
                                                                <form class="needs-validation" novalidate=""
                                                                    name="chat-form" id="chat-form">
                                                                    <div class="row">
                                                                        <div class="col mb-2 mb-sm-0">
                                                                            <input type="text"
                                                                                class="form-control border-0"
                                                                                placeholder="Nội dung" required="">
                                                                            <div class="invalid-feedback mt-2">
                                                                                Hãy nhập nội dung
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-auto">
                                                                            <div class="btn-group">
                                                                                <a href="#" class="btn btn-light"><i
                                                                                        class="fe-paperclip"></i></a>
                                                                                <button type="submit"
                                                                                    class="btn btn-success chat-send btn-block"><i
                                                                                        class="fe-send"></i></button>
                                                                            </div>
                                                                        </div> <!-- end col -->
                                                                    </div> <!-- end row-->
                                                                </form>
                                                            </div>
                                                        </div> <!-- end col-->
                                                    </div>
                                                    <!-- end row -->
                                                </div> <!-- end card-body -->
                                            </div> <!-- end card -->

                                        </div>
                                    </div>
                                </div>
                            </div> <!-- container -->

                        </div> <!-- content -->

                        <!-- Footer Start -->
                        <footer class="footer">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6">
                                        2022 &copy; Daisan admin by <a href="">Group 17</a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="text-md-right footer-links d-none d-sm-block">
                                            <a href="javascript:void(0);">Giới thiệu</a>
                                            <a href="javascript:void(0);">Trợ giúp</a>
                                            <a href="javascript:void(0);">Liên hệ</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </footer>
                        <!-- end Footer -->

                    </div>

                    <!-- ============================================================== -->
                    <!-- End Page content -->
                    <!-- ============================================================== -->


                    </div>
                    <!-- END wrapper -->

                    <!-- /Right-bar -->

                    <!-- Right bar overlay-->
                    <div class="rightbar-overlay"></div>

                    <!-- Vendor js -->
                    <script src="assets/js/vendor.min.js"></script>

                    <script src="assets/libs/jquery-knob/jquery.knob.min.js"></script>
                    <script src="assets/libs/peity/jquery.peity.min.js"></script>

                    <!-- Sparkline charts -->
                    <script src="assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>

                    <!-- init js -->
                    <script src="assets/js/pages/dashboard-1.init.js"></script>

                    <!-- App js -->
                    <script src="assets/js/app.min.js"></script>

                </body>

                </html>