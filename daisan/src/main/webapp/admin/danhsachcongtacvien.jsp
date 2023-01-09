<%-- Created by IntelliJ IDEA. User: ACER Date: 8/12/2022 Time: 7:18 AM To change this template use File | Settings |
    File Templates. --%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title>Daisan | Danh sách CTV</title>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc."
                        name="description">
                    <meta content="Coderthemes" name="author">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <!-- App favicon -->
                    <link rel="shortcut icon" href="assets\images\favicon.ico">
                    <link rel="shortcut icon" href="assets/images/daisan.png">
                    <!-- Custom box css -->
                    <link href="assets\libs\custombox\custombox.min.css" rel="stylesheet">

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
                                                <img src="https://i.imgur.com/GHS1690.png" alt="user-image"
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
                                        <img src="assets/images/logo.png" alt="" height="24">
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
                                                    <a href="baocaodoanhthucongtacvien.jsp">Báo cáo doanh thu CTV</a>
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
                                                        <li class="breadcrumb-item">Cộng tác viên</a></li>
                                                        <li class="breadcrumb-item active">Danh sách cộng tác viên</li>
                                                    </ol>
                                                </div>
                                                <h4 class="page-title">DANH SÁCH CỘNG TÁC VIÊN</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end page title -->

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="card-box">
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <form class="form-inline">
                                                            <div class="form-group">
                                                                <label for="inputPassword2" class="sr-only">Tìm
                                                                    kiếm</label>
                                                                <input type="search" class="form-control"
                                                                    id="inputPassword2" placeholder="Tìm kiếm...">
                                                            </div>
                                                            <div class="form-group mx-sm-3">
                                                                <label for="status-select" class="mr-2">Sắp xếp
                                                                    theo</label>
                                                                <select class="custom-select" id="status-select">
                                                                    <option selected="">Tất cả</option>
                                                                    <option value="1">Tên</option>
                                                                    <option value="2">Bài đăng</option>
                                                                    <option value="3">Người theo dõi</option>
                                                                    <option value="4">Đang theo dõi</option>
                                                                </select>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="text-lg-right mt-3 mt-lg-0">
                                                            <button type="button"
                                                                class="btn btn-success waves-effect waves-light mr-1"><i
                                                                    class="mdi mdi-settings"></i></button>
                                                            <a href="#custom-modal"
                                                                class="btn btn-danger waves-effect waves-light"
                                                                data-animation="fadein" data-plugin="custommodal"
                                                                data-overlaycolor="#38414a"><i
                                                                    class="mdi mdi-plus-circle mr-1"></i>
                                                                Thêm mới</a>
                                                        </div>
                                                    </div><!-- end col-->
                                                </div> <!-- end row -->
                                            </div> <!-- end card-box -->
                                        </div><!-- end col-->
                                    </div>
                                    <!-- end row -->

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="text-center card-box ribbon-box">
                                                <div class="ribbon-two ribbon-two-danger"><span>Admin</span></div>
                                                <div class="clearfix"></div>
                                                <div class="pt-2 pb-2">
                                                    <img src="assets/images/users/duc.jpg"
                                                        class="rounded-circle img-thumbnail avatar-xl"
                                                        alt="profile-image">

                                                    <h4 class="mt-3 font-17"><a href="taikhoanadmin.jsp"
                                                            class="text-dark">Nguyễn Thái
                                                            Đức</a></h4>
                                                    <p class="text-muted">@FullStack <span> | </span> <span> <a href="#"
                                                                class="text-primary">18130047</a> </span></p>

                                                    <p class="text-muted font-13 mb-3">

                                                    </p>

                                                    <button type="button"
                                                        class="btn btn-primary btn-sm waves-effect waves-light"><i
                                                            class="mdi mdi-email mr-1"></i> Nhắn tin</button>
                                                    <button type="button" class="btn btn-light btn-sm waves-effect"><i
                                                            class="mdi mdi-phone mr-1"></i> Gọi</button>

                                                    <ul class="social-list list-inline mt-3 mb-0">
                                                        <li class="list-inline-item">
                                                            <a href="javascript: void(0);"
                                                                class="social-list-item border-purple text-purple"><i
                                                                    class="mdi mdi-facebook"></i></a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="javascript: void(0);"
                                                                class="social-list-item border-danger text-danger"><i
                                                                    class="mdi mdi-google"></i></a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="javascript: void(0);"
                                                                class="social-list-item border-secondary text-secondary"><i
                                                                    class="mdi mdi-github-circle"></i></a>
                                                        </li>
                                                    </ul>

                                                </div> <!-- end .padding -->
                                            </div> <!-- end card-box-->
                                        </div> <!-- end col -->

                                        <div class="col-lg-4">
                                            <div class="text-center card-box ribbon-box">
                                                <div class="ribbon-two ribbon-two-warning"><span>Admin</span></div>
                                                <div class="pt-2 pb-2">
                                                    <img src="assets/images/users/tuan.jpg"
                                                        class="rounded-circle img-thumbnail avatar-xl"
                                                        alt="profile-image">

                                                    <h4 class="mt-3 font-17"><a href="taikhoanadmin.jsp"
                                                            class="text-dark">Bùi Anh
                                                            Tuấn</a></h4>
                                                    <p class="text-muted">@Webdesigner <span> | </span> <span> <a
                                                                href="#" class="text-primary">18130151</a> </span></p>

                                                    <p class="text-muted font-13 mb-3">

                                                    </p>

                                                    <button type="button"
                                                        class="btn btn-primary btn-sm waves-effect waves-light"><i
                                                            class="mdi mdi-email mr-1"></i> Nhắn tin</button>
                                                    <button type="button" class="btn btn-light btn-sm waves-effect"><i
                                                            class="mdi mdi-phone mr-1"></i> Gọi </button>

                                                    <ul class="social-list list-inline mt-3 mb-0">
                                                        <li class="list-inline-item">
                                                            <a href="javascript: void(0);"
                                                                class="social-list-item border-purple text-purple"><i
                                                                    class="mdi mdi-facebook"></i></a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="javascript: void(0);"
                                                                class="social-list-item border-info text-info"><i
                                                                    class="mdi mdi-twitter"></i></a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="javascript: void(0);"
                                                                class="social-list-item border-secondary text-secondary"><i
                                                                    class="mdi mdi-github-circle"></i></a>
                                                        </li>
                                                    </ul>

                                                </div> <!-- end .padding -->
                                            </div> <!-- end card-box-->
                                        </div> <!-- end col -->

                                        <div class="col-lg-4">
                                            <div class="text-center card-box ribbon-box">
                                                <div class="ribbon-two ribbon-two-success"><span>Admin</span></div>
                                                <div class="pt-2 pb-2">
                                                    <img src="assets/images/users/thuy.jpg"
                                                        class="rounded-circle img-thumbnail avatar-xl"
                                                        alt="profile-image">

                                                    <h4 class="mt-3 font-17"><a href="taikhoanadmin.jsp"
                                                            class="text-dark">Trần Thị Mỹ
                                                            Thùy</a></h4>
                                                    <p class="text-muted">@Webdeveloper <span> | </span> <span> <a
                                                                href="#" class="text-primary">2012343</a> </span></p>

                                                    <p class="text-muted font-13 mb-3">

                                                    </p>

                                                    <button type="button"
                                                        class="btn btn-primary btn-sm waves-effect waves-light"><i
                                                            class="mdi mdi-email mr-1"></i> Nhắn tin</button>
                                                    <button type="button" class="btn btn-light btn-sm waves-effect"><i
                                                            class="mdi mdi-phone mr-1"></i> Gọi</button>

                                                    <ul class="social-list list-inline mt-3 mb-0">
                                                        <li class="list-inline-item">
                                                            <a href="javascript: void(0);"
                                                                class="social-list-item border-danger text-danger"><i
                                                                    class="mdi mdi-google"></i></a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="javascript: void(0);"
                                                                class="social-list-item border-info text-info"><i
                                                                    class="mdi mdi-twitter"></i></a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="javascript: void(0);"
                                                                class="social-list-item border-secondary text-secondary"><i
                                                                    class="mdi mdi-github-circle"></i></a>
                                                        </li>
                                                    </ul>

                                                </div> <!-- end .padding -->
                                            </div> <!-- end card-box-->
                                        </div> <!-- end col -->
                                    </div>
                                    <!-- end row -->









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


                    <!-- Modal -->
                    <div id="custom-modal" class="modal-demo">
                        <button type="button" class="close" onclick="Custombox.modal.close();">
                            <span>&times;</span><span class="sr-only">Close</span>
                        </button>
                        <h4 class="custom-modal-title">Add Members</h4>
                        <div class="custom-modal-text text-left">
                            <form>
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input type="text" class="form-control" id="name" placeholder="Enter name">
                                </div>
                                <div class="form-group">
                                    <label for="position">Position</label>
                                    <input type="text" class="form-control" id="position" placeholder="Enter position">
                                </div>
                                <div class="form-group">
                                    <label for="company">Company</label>
                                    <input type="text" class="form-control" id="company" placeholder="Enter company">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1"
                                        placeholder="Enter email">
                                </div>

                                <div class="text-right">
                                    <button type="submit" class="btn btn-success waves-effect waves-light">Save</button>
                                    <button type="button" class="btn btn-danger waves-effect waves-light m-l-10"
                                        onclick="Custombox.close();">Cancel</button>
                                </div>
                            </form>
                        </div>
                    </div>


                    <!-- Right Sidebar -->
                    <div class="right-bar">
                        <div class="rightbar-title">
                            <a href="javascript:void(0);" class="right-bar-toggle float-right">
                                <i class="fe-x noti-icon"></i>
                            </a>
                            <h4 class="m-0 text-white">Settings</h4>
                        </div>
                        <div class="slimscroll-menu">
                            <!-- User box -->
                            <div class="user-box">
                                <div class="user-img">
                                    <img src="assets/images/users/avatar-1.jpg" alt="user-img" title="Mat Helme"
                                        class="rounded-circle img-fluid">
                                    <a href="javascript:void(0);" class="user-edit"><i class="mdi mdi-pencil"></i></a>
                                </div>

                                <h5><a href="javascript: void(0);">Nik G. Patel</a> </h5>
                                <p class="text-muted mb-0"><small>Admin Head</small></p>
                            </div>

                            <ul class="nav nav-pills bg-light nav-justified">
                                <li class="nav-item">
                                    <a href="#home1" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0">
                                        General
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#messages1" data-toggle="tab" aria-expanded="false"
                                        class="nav-link rounded-0 active">
                                        Chat
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content pl-3 pr-3">
                                <div class="tab-pane" id="home1">
                                    <div class="row mb-2">
                                        <div class="col">
                                            <h5 class="m-0 font-15">Notifications</h5>
                                            <p class="text-muted"><small>Do you need them?</small></p>
                                        </div> <!-- end col-->
                                        <div class="col-auto">
                                            <div class="custom-control custom-switch mb-2">
                                                <input type="checkbox" class="custom-control-input" id="tabswitch1">
                                                <label class="custom-control-label" for="tabswitch1"></label>
                                            </div>
                                        </div> <!-- end col -->
                                    </div>
                                    <!-- end row-->

                                    <div class="row mb-2">
                                        <div class="col">
                                            <h5 class="m-0 font-15">API Access</h5>
                                            <p class="text-muted"><small>Enable/Disable access</small></p>
                                        </div> <!-- end col-->
                                        <div class="col-auto">
                                            <div class="custom-control custom-switch mb-2">
                                                <input type="checkbox" class="custom-control-input" checked=""
                                                    id="tabswitch2">
                                                <label class="custom-control-label" for="tabswitch2"></label>
                                            </div>
                                        </div> <!-- end col -->
                                    </div>
                                    <!-- end row-->

                                    <div class="row mb-2">
                                        <div class="col">
                                            <h5 class="m-0 font-15">Auto Updates</h5>
                                            <p class="text-muted"><small>Keep up to date</small></p>
                                        </div> <!-- end col-->
                                        <div class="col-auto">
                                            <div class="custom-control custom-switch mb-2">
                                                <input type="checkbox" class="custom-control-input" id="tabswitch3">
                                                <label class="custom-control-label" for="tabswitch3"></label>
                                            </div>
                                        </div> <!-- end col -->
                                    </div>
                                    <!-- end row-->

                                    <div class="row mb-2">
                                        <div class="col">
                                            <h5 class="m-0 font-15">Online Status</h5>
                                            <p class="text-muted"><small>Show your status to all</small></p>
                                        </div> <!-- end col-->
                                        <div class="col-auto">
                                            <div class="custom-control custom-switch mb-2">
                                                <input type="checkbox" class="custom-control-input" checked=""
                                                    id="tabswitch4">
                                                <label class="custom-control-label" for="tabswitch4"></label>
                                            </div>
                                        </div> <!-- end col -->
                                    </div>
                                    <!-- end row-->

                                    <div class="alert alert-success alert-dismissible fade mt-3 show" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                        <h5>Unlimited Access</h5>
                                        Upgrade to plan to get access to unlimited reports
                                        <br>
                                        <a href="javascript: void(0);"
                                            class="btn btn-outline-success mt-3 btn-sm">Upgrade<i
                                                class="ml-1 mdi mdi-arrow-right"></i></a>
                                    </div>

                                </div>
                                <div class="tab-pane show active" id="messages1">
                                    <div>
                                        <div class="inbox-widget">
                                            <h5 class="mt-0">Recent</h5>
                                            <div class="inbox-item">
                                                <div class="inbox-item-img"><img src="assets/images/users/avatar-2.jpg"
                                                        class="rounded-circle" alt=""> <i
                                                        class="online user-status"></i></div>
                                                <p class="inbox-item-author"><a href="javascript: void(0);"
                                                        class="text-dark">Tomaslau</a></p>
                                                <p class="inbox-item-text">I've finished it! See you so...</p>
                                            </div>
                                            <div class="inbox-item">
                                                <div class="inbox-item-img"><img src="assets/images/users/avatar-3.jpg"
                                                        class="rounded-circle" alt=""> <i class="away user-status"></i>
                                                </div>
                                                <p class="inbox-item-author"><a href="javascript: void(0);"
                                                        class="text-dark">Stillnotdavid</a></p>
                                                <p class="inbox-item-text">This theme is awesome!</p>
                                            </div>
                                            <div class="inbox-item">
                                                <div class="inbox-item-img"><img src="assets/images/users/avatar-4.jpg"
                                                        class="rounded-circle" alt=""> <i
                                                        class="online user-status"></i></div>
                                                <p class="inbox-item-author"><a href="javascript: void(0);"
                                                        class="text-dark">Kurafire</a></p>
                                                <p class="inbox-item-text">Nice to meet you</p>
                                            </div>

                                            <div class="inbox-item">
                                                <div class="inbox-item-img"><img src="assets/images/users/avatar-5.jpg"
                                                        class="rounded-circle" alt=""> <i class="busy user-status"></i>
                                                </div>
                                                <p class="inbox-item-author"><a href="javascript: void(0);"
                                                        class="text-dark">Shahedk</a></p>
                                                <p class="inbox-item-text">Hey! there I'm available...</p>
                                            </div>
                                            <div class="inbox-item">
                                                <div class="inbox-item-img"><img src="assets/images/users/avatar-6.jpg"
                                                        class="rounded-circle" alt=""> <i class="user-status"></i></div>
                                                <p class="inbox-item-author"><a href="javascript: void(0);"
                                                        class="text-dark">Adhamdannaway</a></p>
                                                <p class="inbox-item-text">This theme is awesome!</p>
                                            </div>

                                            <hr>
                                            <h5>Favorite <span
                                                    class="float-right badge badge-pill badge-danger">18</span></h5>
                                            <hr>
                                            <div class="inbox-item">
                                                <div class="inbox-item-img"><img src="assets/images/users/avatar-7.jpg"
                                                        class="rounded-circle" alt=""> <i class="busy user-status"></i>
                                                </div>
                                                <p class="inbox-item-author"><a href="javascript: void(0);"
                                                        class="text-dark">Kennith</a></p>
                                                <p class="inbox-item-text">I've finished it! See you so...</p>
                                            </div>
                                            <div class="inbox-item">
                                                <div class="inbox-item-img"><img src="assets/images/users/avatar-3.jpg"
                                                        class="rounded-circle" alt=""> <i class="busy user-status"></i>
                                                </div>
                                                <p class="inbox-item-author"><a href="javascript: void(0);"
                                                        class="text-dark">Stillnotdavid</a></p>
                                                <p class="inbox-item-text">This theme is awesome!</p>
                                            </div>
                                            <div class="inbox-item">
                                                <div class="inbox-item-img"><img src="assets/images/users/avatar-10.jpg"
                                                        class="rounded-circle" alt=""> <i
                                                        class="online user-status"></i></div>
                                                <p class="inbox-item-author"><a href="javascript: void(0);"
                                                        class="text-dark">Kimberling</a></p>
                                                <p class="inbox-item-text">Nice to meet you</p>
                                            </div>

                                            <div class="inbox-item">
                                                <div class="inbox-item-img"><img src="assets/images/users/avatar-4.jpg"
                                                        class="rounded-circle" alt=""> <i class="user-status"></i></div>
                                                <p class="inbox-item-author"><a href="javascript: void(0);"
                                                        class="text-dark">Kurafire</a></p>
                                                <p class="inbox-item-text">Hey! there I'm available...</p>
                                            </div>
                                            <div class="inbox-item">
                                                <div class="inbox-item-img"><img src="assets/images/users/avatar-9.jpg"
                                                        class="rounded-circle" alt=""> <i class="away user-status"></i>
                                                </div>
                                                <p class="inbox-item-author"><a href="javascript: void(0);"
                                                        class="text-dark">Leonareade</a></p>
                                                <p class="inbox-item-text">This theme is awesome!</p>
                                            </div>

                                            <div class="text-center mt-2">
                                                <a href="javascript:void(0);" class="text-muted"><i
                                                        class="mdi mdi-spin mdi-loading mr-1"></i> Load more </a>
                                            </div>

                                        </div> <!-- end inbox-widget -->
                                    </div> <!-- end .p-3-->
                                </div>
                            </div>

                        </div> <!-- end slimscroll-menu-->
                    </div>
                    <!-- /Right-bar -->

                    <!-- Right bar overlay-->
                    <div class="rightbar-overlay"></div>

                    <!-- Vendor js -->
                    <script src="assets/js/vendor.min.js"></script>

                    <!-- Modal-Effect -->
                    <script src="assets\libs\custombox\custombox.min.js"></script>

                    <!-- App js -->
                    <script src="assets/js/app.min.js"></script>

                </body>

                </html>