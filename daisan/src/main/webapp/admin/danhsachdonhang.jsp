<%@ page import="vn.edu.hcmuaf.fit.bean.OrderBean" %>
    <%@ page import="vn.edu.hcmuaf.fit.services.OrderService" %>
        <%@ page import="java.util.List" %><%-- Created by IntelliJ IDEA. User: ACER Date: 8/12/2022 Time: 7:19 AM To
                change this template use File | Settings | File Templates. --%>
                <%@ page contentType="text/html;charset=UTF-8" language="java" %>
                    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                        <%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
                            <html lang="en">

                            <head>
                                <meta charset="utf-8">
                                <title>Daisan | Danh sách đơn hàng
                                </title>
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc."
                                    name="description">
                                <meta content="Coderthemes" name="author">
                                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                                <!-- App favicon -->

                                <link rel="shortcut icon" href="assets/images/favicon.ico">

                                <!-- third party css -->
                                <link href="assets/libs/datatables/dataTables.bootstrap4.css" rel="stylesheet"
                                    type="text/css">
                                <link href="assets/libs/datatables/responsive.bootstrap4.css" rel="stylesheet"
                                    type="text/css">
                                <link href="assets/libs/datatables/buttons.bootstrap4.css" rel="stylesheet"
                                    type="text/css">
                                <link href="assets/libs/datatables/select.bootstrap4.css" rel="stylesheet"
                                    type="text/css">
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
                                                <a class="nav-link dropdown-toggle waves-effect waves-light"
                                                    data-toggle="dropdown" href="#" role="button" aria-haspopup="false"
                                                    aria-expanded="false">
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
                                                            data-toggle="dropdown" href="taikhoanadmin.jsp"
                                                            role="button" aria-haspopup="false" aria-expanded="false">
                                                            <img src="https://i.imgur.com/GHS1690.png" alt="user-image"
                                                                class="rounded-circle">
                                                            <span class="pro-user-name ml-1">
                                                                ${sessionScope.user.fullname} <i
                                                                    class="mdi mdi-chevron-down"></i>
                                                            </span>
                                                        </a>
                                                        <div
                                                            class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                                            <!-- item-->
                                                            <a href="taikhoanadmin.jsp"
                                                                class="dropdown-item notify-item">
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
                                                            data-toggle="dropdown" href="taikhoanadmin.jsp"
                                                            role="button" aria-haspopup="false" aria-expanded="false">

                                                            <span class="pro-user-name ml-1">
                                                                Tài Khoản <i class="mdi mdi-chevron-down"></i>
                                                            </span>
                                                        </a>
                                                        <div
                                                            class="dropdown-menu dropdown-menu-right profile-dropdown ">
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
                                                                <a href="baocaodoanhthucongtacvien.jsp">Báo cáo doanh
                                                                    thu
                                                                    CTV</a>
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
                                                                    <li class="breadcrumb-item"><a
                                                                            href="javascript: void(0);">Đơn
                                                                            hàng</a></li>
                                                                    <li class="breadcrumb-item active">Danh sách đơn
                                                                        hàng</li>
                                                                </ol>
                                                            </div>
                                                            <h4 class="page-title">DANH SÁCH ĐƠN HÀNG</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- end page title -->

                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="card">
                                                            <div class="card-body">
                                                                <div class="row mb-2">
                                                                    <div class="col-lg-8">
                                                                        <form class="form-inline">
                                                                            <div class="form-group mb-2">
                                                                                <label for="inputPassword2"
                                                                                    class="sr-only">Tìm
                                                                                    kiếm</label>
                                                                                <input type="search"
                                                                                    class="form-control"
                                                                                    id="inputPassword2"
                                                                                    placeholder="Tìm kiếm...">
                                                                            </div>
                                                                            <div class="form-group mx-sm-3 mb-2">
                                                                                <label for="status-select"
                                                                                    class="mr-2">Trạng
                                                                                    thái</label>
                                                                                <select class="custom-select"
                                                                                    id="status-select">
                                                                                    <option selected="">Chọn...</option>
                                                                                    <option value="1">Đã thanh toán
                                                                                    </option>
                                                                                    <option value="2">Chưa thanh toán
                                                                                    </option>
                                                                                    <option value="3">Thanh toán khi
                                                                                        giao hàng
                                                                                    </option>
                                                                                    <option value="4">Hủy đơn</option>
                                                                                    <option value="5">Thanh toán không
                                                                                        thành công
                                                                                    </option>

                                                                                </select>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                    <div class="col-lg-4">
                                                                        <div class="text-lg-right">
                                                                            <button type="button"
                                                                                class="btn btn-danger mb-2 mr-2"><i
                                                                                    class="mdi mdi-basket mr-1"></i>
                                                                                Thêm đơn hàng
                                                                                mới</button>
                                                                            <button type="button"
                                                                                class="btn btn-light mb-2">Xuất
                                                                                Excel</button>
                                                                        </div>
                                                                    </div><!-- end col-->
                                                                </div>

                                                                <div class="table-responsive">
                                                                    <table
                                                                        class="table table-centered table-nowrap mb-0">
                                                                        <thead class="thead-light">
                                                                            <tr>
                                                                                <th style="width: 20px;">
                                                                                    <div
                                                                                        class="custom-control custom-checkbox">
                                                                                        <input type="checkbox"
                                                                                            class="custom-control-input"
                                                                                            id="customCheck1">
                                                                                        <label
                                                                                            class="custom-control-label"
                                                                                            for="customCheck1">&nbsp;</label>
                                                                                    </div>
                                                                                </th>
                                                                                <th>ID</th>
                                                                                <th>ID User</th>
                                                                                <th>Số lượng</th>
                                                                                <th>Giá</th>
                                                                                <th>Thanh toán</th>
                                                                                <th>Ngày giao hàng</th>
                                                                                <th>Ngày nhận hàng</th>
                                                                                <th>Trạng thái</th>
                                                                                <th style="width: 125px;">Tác vụ</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <% List<OrderBean> orders =
                                                                                OrderService.getInstance().getAllOrders();
                                                                                for (OrderBean order : orders){
                                                                                %>
                                                                                <tr>
                                                                                    <td>
                                                                                        <div
                                                                                            class="custom-control custom-checkbox">
                                                                                            <input type="checkbox"
                                                                                                class="custom-control-input"
                                                                                                id="customCheck2">
                                                                                            <label
                                                                                                class="custom-control-label"
                                                                                                for="customCheck2">&nbsp;</label>
                                                                                        </div>
                                                                                    </td>
                                                                                    <td><a href="ecommerce-orders-chitietsanpham.jsp"
                                                                                            class="text-body font-weight-medium">
                                                                                            <%= order.getOrder_ID() %>
                                                                                        </a>
                                                                                    </td>
                                                                                    <td>
                                                                                        <%= order.getUser_ID()%>
                                                                                    </td>
                                                                                    <td>
                                                                                        <%= order.getNum_item() %>
                                                                                            <small
                                                                                                class="text-muted"></small>
                                                                                    </td>
                                                                                    <td><%= order.getPrice() %></td>
                                                                                    <td>
                                                                                        <span
                                                                                                class="badge badge-light-success"><%= order.getPayment() %></span>
                                                                                    </td>
                                                                                    <td>
                                                                                        <div>

                                                                                            <%= order.getDeliveryDate() %>
                                                                                        </div>
                                                                                    </td>
                                                                                    <td>
                                                                                        <%= order.getReceptDate() %>
                                                                                    </td>

                                                                                    <td>
                                                                                        <div><span
                                                                                                class="badge badge-info">
                                                                                                <%= order.getStatus() %>
                                                                                            </span></div>
                                                                                    </td>
                                                                                    <td>
                                                                                        <ul class="list-inline mb-0">
                                                                                            <li
                                                                                                class="list-inline-item">
                                                                                                <a href="javascript:void(0);"
                                                                                                    class="action-icon">
                                                                                                    <i
                                                                                                        class="mdi mdi-eye"></i></a>
                                                                                            </li>
                                                                                            <li
                                                                                                class="list-inline-item">
                                                                                                <a href="javascript:void(0);"
                                                                                                    class="action-icon">
                                                                                                    <i
                                                                                                        class="mdi mdi-square-edit-outline"></i></a>
                                                                                            </li>
                                                                                            <li
                                                                                                class="list-inline-item">
                                                                                                <a href="javascript:void(0);"
                                                                                                    class="action-icon">
                                                                                                    <i
                                                                                                        class="mdi mdi-delete"></i></a>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </td>
                                                                                </tr>
                                                                                <%}%>

                                                                        </tbody>
                                                                    </table>
                                                                </div>

                                                                <div class="row mt-4">
                                                                    <div class="col-sm-6">
                                                                        <div>
                                                                            <h5 class="font-14 text-body">Showing orders
                                                                                1 to 10 of
                                                                                112</h5>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="float-sm-right">
                                                                            <ul
                                                                                class="pagination pagination-rounded mb-sm-0">
                                                                                <li class="page-item disabled">
                                                                                    <a href="#" class="page-link"><i
                                                                                            class="mdi mdi-chevron-left"></i></a>
                                                                                </li>
                                                                                <li class="page-item">
                                                                                    <a href="#" class="page-link">1</a>
                                                                                </li>
                                                                                <li class="page-item active">
                                                                                    <a href="#" class="page-link">2</a>
                                                                                </li>
                                                                                <li class="page-item">
                                                                                    <a href="#" class="page-link">3</a>
                                                                                </li>
                                                                                <li class="page-item">
                                                                                    <a href="#" class="page-link">4</a>
                                                                                </li>
                                                                                <li class="page-item">
                                                                                    <a href="#" class="page-link">5</a>
                                                                                </li>
                                                                                <li class="page-item">
                                                                                    <a href="#" class="page-link"><i
                                                                                            class="mdi mdi-chevron-right"></i></a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
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
                                                        2022 &copy; Daisan admin by <a href="">Group 14</a>
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
                                                <img src="assets/images/users/avatar-1.jpg" alt="user-img"
                                                    title="Mat Helme" class="rounded-circle img-fluid">
                                                <a href="javascript:void(0);" class="user-edit"><i
                                                        class="mdi mdi-pencil"></i></a>
                                            </div>

                                            <h5><a href="javascript: void(0);">Nik G. Patel</a> </h5>
                                            <p class="text-muted mb-0"><small>Admin Head</small></p>
                                        </div>

                                        <ul class="nav nav-pills bg-light nav-justified">
                                            <li class="nav-item">
                                                <a href="#home1" data-toggle="tab" aria-expanded="false"
                                                    class="nav-link rounded-0">
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
                                                            <input type="checkbox" class="custom-control-input"
                                                                id="tabswitch1">
                                                            <label class="custom-control-label"
                                                                for="tabswitch1"></label>
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
                                                            <input type="checkbox" class="custom-control-input"
                                                                checked="" id="tabswitch2">
                                                            <label class="custom-control-label"
                                                                for="tabswitch2"></label>
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
                                                            <input type="checkbox" class="custom-control-input"
                                                                id="tabswitch3">
                                                            <label class="custom-control-label"
                                                                for="tabswitch3"></label>
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
                                                            <input type="checkbox" class="custom-control-input"
                                                                checked="" id="tabswitch4">
                                                            <label class="custom-control-label"
                                                                for="tabswitch4"></label>
                                                        </div>
                                                    </div> <!-- end col -->
                                                </div>
                                                <!-- end row-->

                                                <div class="alert alert-success alert-dismissible fade mt-3 show"
                                                    role="alert">
                                                    <button type="button" class="close" data-dismiss="alert"
                                                        aria-label="Close">
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
                                                            <div class="inbox-item-img"><img
                                                                    src="assets/images/users/avatar-2.jpg"
                                                                    class="rounded-circle" alt=""> <i
                                                                    class="online user-status"></i></div>
                                                            <p class="inbox-item-author"><a href="javascript: void(0);"
                                                                    class="text-dark">Tomaslau</a></p>
                                                            <p class="inbox-item-text">I've finished it! See you so...
                                                            </p>
                                                        </div>
                                                        <div class="inbox-item">
                                                            <div class="inbox-item-img"><img
                                                                    src="assets/images/users/avatar-3.jpg"
                                                                    class="rounded-circle" alt=""> <i
                                                                    class="away user-status"></i>
                                                            </div>
                                                            <p class="inbox-item-author"><a href="javascript: void(0);"
                                                                    class="text-dark">Stillnotdavid</a></p>
                                                            <p class="inbox-item-text">This theme is awesome!</p>
                                                        </div>
                                                        <div class="inbox-item">
                                                            <div class="inbox-item-img"><img
                                                                    src="assets/images/users/avatar-4.jpg"
                                                                    class="rounded-circle" alt=""> <i
                                                                    class="online user-status"></i></div>
                                                            <p class="inbox-item-author"><a href="javascript: void(0);"
                                                                    class="text-dark">Kurafire</a></p>
                                                            <p class="inbox-item-text">Nice to meet you</p>
                                                        </div>

                                                        <div class="inbox-item">
                                                            <div class="inbox-item-img"><img
                                                                    src="assets/images/users/avatar-5.jpg"
                                                                    class="rounded-circle" alt=""> <i
                                                                    class="busy user-status"></i>
                                                            </div>
                                                            <p class="inbox-item-author"><a href="javascript: void(0);"
                                                                    class="text-dark">Shahedk</a></p>
                                                            <p class="inbox-item-text">Hey! there I'm available...</p>
                                                        </div>
                                                        <div class="inbox-item">
                                                            <div class="inbox-item-img"><img
                                                                    src="assets/images/users/avatar-6.jpg"
                                                                    class="rounded-circle" alt=""> <i
                                                                    class="user-status"></i></div>
                                                            <p class="inbox-item-author"><a href="javascript: void(0);"
                                                                    class="text-dark">Adhamdannaway</a></p>
                                                            <p class="inbox-item-text">This theme is awesome!</p>
                                                        </div>

                                                        <hr>
                                                        <h5>Favorite <span
                                                                class="float-right badge badge-pill badge-danger">18</span>
                                                        </h5>
                                                        <hr>
                                                        <div class="inbox-item">
                                                            <div class="inbox-item-img"><img
                                                                    src="assets/images/users/avatar-7.jpg"
                                                                    class="rounded-circle" alt=""> <i
                                                                    class="busy user-status"></i>
                                                            </div>
                                                            <p class="inbox-item-author"><a href="javascript: void(0);"
                                                                    class="text-dark">Kennith</a></p>
                                                            <p class="inbox-item-text">I've finished it! See you so...
                                                            </p>
                                                        </div>
                                                        <div class="inbox-item">
                                                            <div class="inbox-item-img"><img
                                                                    src="assets/images/users/avatar-3.jpg"
                                                                    class="rounded-circle" alt=""> <i
                                                                    class="busy user-status"></i>
                                                            </div>
                                                            <p class="inbox-item-author"><a href="javascript: void(0);"
                                                                    class="text-dark">Stillnotdavid</a></p>
                                                            <p class="inbox-item-text">This theme is awesome!</p>
                                                        </div>
                                                        <div class="inbox-item">
                                                            <div class="inbox-item-img"><img
                                                                    src="assets/images/users/avatar-10.jpg"
                                                                    class="rounded-circle" alt=""> <i
                                                                    class="online user-status"></i></div>
                                                            <p class="inbox-item-author"><a href="javascript: void(0);"
                                                                    class="text-dark">Kimberling</a></p>
                                                            <p class="inbox-item-text">Nice to meet you</p>
                                                        </div>

                                                        <div class="inbox-item">
                                                            <div class="inbox-item-img"><img
                                                                    src="assets/images/users/avatar-4.jpg"
                                                                    class="rounded-circle" alt=""> <i
                                                                    class="user-status"></i></div>
                                                            <p class="inbox-item-author"><a href="javascript: void(0);"
                                                                    class="text-dark">Kurafire</a></p>
                                                            <p class="inbox-item-text">Hey! there I'm available...</p>
                                                        </div>
                                                        <div class="inbox-item">
                                                            <div class="inbox-item-img"><img
                                                                    src="assets/images/users/avatar-9.jpg"
                                                                    class="rounded-circle" alt=""> <i
                                                                    class="away user-status"></i>
                                                            </div>
                                                            <p class="inbox-item-author"><a href="javascript: void(0);"
                                                                    class="text-dark">Leonareade</a></p>
                                                            <p class="inbox-item-text">This theme is awesome!</p>
                                                        </div>

                                                        <div class="text-center mt-2">
                                                            <a href="javascript:void(0);" class="text-muted"><i
                                                                    class="mdi mdi-spin mdi-loading mr-1"></i> Load more
                                                            </a>
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

                                <!-- third party js -->
                                <script src="assets/libs/datatables/jquery.dataTables.min.js"></script>
                                <script src="assets/libs/datatables/dataTables.bootstrap4.js"></script>
                                <script src="assets/libs/datatables/dataTables.responsive.min.js"></script>
                                <script src="assets/libs/datatables/responsive.bootstrap4.min.js"></script>
                                <script src="assets/libs/datatables/dataTables.buttons.min.js"></script>
                                <script src="assets/libs/datatables/buttons.bootstrap4.min.js"></script>
                                <script src="assets/libs/datatables/buttons.html5.min.js"></script>
                                <script src="assets/libs/datatables/buttons.flash.min.js"></script>
                                <script src="assets/libs/datatables/buttons.print.min.js"></script>
                                <script src="assets/libs/datatables/dataTables.keyTable.min.js"></script>
                                <script src="assets/libs/datatables/dataTables.select.min.js"></script>
                                <script src="assets/libs/pdfmake/pdfmake.min.js"></script>
                                <script src="assets/libs/pdfmake/vfs_fonts.js"></script>
                                <!-- third party js ends -->

                                <!-- Datatables init -->
                                <script src="assets/js/pages/datatables.init.js"></script>

                                <!-- App js -->
                                <script src="assets/js/app.min.js"></script>

                            </body>

                            </html>