<%@ page import="vn.edu.hcmuaf.fit.bean.UserBean" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.services.UserService" %><%-- Created by IntelliJ IDEA. User: ACER Date: 8/12/2022 Time: 7:20 AM To change this template use File | Settings |
    File Templates. --%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title>Daisan | Danh sách khách hàng
                    </title>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc."
                        name="description">
                    <meta content="Coderthemes" name="author">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <!-- App favicon -->

                    <link rel="shortcut icon" href="assets/images/favicon.ico">

                    <!-- third party css -->
                    <link href="assets/libs/datatables/dataTables.bootstrap4.css" rel="stylesheet" type="text/css">
                    <link href="assets/libs/datatables/responsive.bootstrap4.css" rel="stylesheet" type="text/css">
                    <link href="assets/libs/datatables/buttons.bootstrap4.css" rel="stylesheet" type="text/css">
                    <link href="assets/libs/datatables/select.bootstrap4.css" rel="stylesheet" type="text/css">
                    <!-- third party css end -->

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
                                                        <li class="breadcrumb-item"><a
                                                                href="javascript: void(0);">Admin</a></li>
                                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Khách
                                                                hàng</a></li>
                                                        <li class="breadcrumb-item active">Danh sách khách hàng</li>
                                                    </ol>
                                                </div>
                                                <h4 class="page-title">DANH SÁCH KHÁCH HÀNG</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end page title -->




                                    <div class="row">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-body">




                                                    <table id="datatable-buttons"
                                                        class="table table-striped dt-responsive nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Tên</th>
                                                                <th>Tài khoản</th>
                                                                <th>Địa chỉ</th>
                                                                <th>Tuổi</th>
                                                                <th>Ngày tạo</th>
                                                                <th>ID</th>
                                                            </tr>
                                                        </thead>


                                                        <tbody>
                                                        <%
                                                            List<UserBean> customers = UserService.getInstance().getCustomers();
                                                            for (UserBean customer : customers) { %>

                                                            <tr>
                                                                <td> <%=customer.getFullname()%></td>
                                                                <td><%=customer.getUsername()%></td>
                                                                <td><%=customer.getAddress()%></td>
                                                                <td>61</td>
                                                                <td>2022/04/25</td>
                                                                <td>3208</td>
                                                            </tr>
                                                        <%}%>

                                                        </tbody>
                                                    </table>

                                                </div> <!-- end card body-->
                                            </div> <!-- end card -->
                                        </div><!-- end col-->
                                    </div>
                                    <!-- end row-->
























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

                    <!-- third party js -->
                    <script src="assets\libs\datatables\jquery.dataTables.min.js"></script>
                    <script src="assets\libs\datatables\dataTables.bootstrap4.js"></script>
                    <script src="assets\libs\datatables\dataTables.responsive.min.js"></script>
                    <script src="assets\libs\datatables\responsive.bootstrap4.min.js"></script>
                    <script src="assets\libs\datatables\dataTables.buttons.min.js"></script>
                    <script src="assets\libs\datatables\buttons.bootstrap4.min.js"></script>
                    <script src="assets\libs\datatables\buttons.html5.min.js"></script>
                    <script src="assets\libs\datatables\buttons.flash.min.js"></script>
                    <script src="assets\libs\datatables\buttons.print.min.js"></script>
                    <script src="assets\libs\datatables\dataTables.keyTable.min.js"></script>
                    <script src="assets\libs\datatables\dataTables.select.min.js"></script>
                    <script src="assets\libs\pdfmake\pdfmake.min.js"></script>
                    <script src="assets\libs\pdfmake\vfs_fonts.js"></script>
                    <!-- third party js ends -->

                    <!-- Datatables init -->
                    <script src="assets\js\pages\datatables.init.js"></script>

                    <!-- App js -->
                    <script src="assets/js/app.min.js"></script>

                </body>

                </html>