<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 8/12/2022
  Time: 7:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Daisan | Báo cáo doanh thu CTV
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
    <meta content="Coderthemes" name="author">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- App favicon -->

    <link rel="shortcut icon" href="assets/images/daisan.png">

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

            <!-- <li class="d-none d-sm-block">
                    <form class="app-search">
                        <div class="app-search-box">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search...">
                                <div class="input-group-append">
                                    <button class="btn" type="submit">
                                        <i class="fe-search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </li> -->
            <li class="dropdown d-none d-lg-block">
                <a class="nav-link dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"
                   role="button" aria-haspopup="false" aria-expanded="false">
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
                <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown"
                   href="#" role="button" aria-haspopup="false" aria-expanded="false">
                    <img src="assets/images/users/duc.jpg" alt="user-image" class="rounded-circle">
                    <span class="pro-user-name ml-1">
                            Nguyễn Đức <i class="mdi mdi-chevron-down"></i>
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
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Admin</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Cộng tác viên</a>
                                    </li>
                                    <li class="breadcrumb-item active">Báo cáo doanh thu CTV</li>
                                </ol>
                            </div>
                            <h4 class="page-title">BÁO CÁO DOANH THU CTV</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->




                <div class="row">
                    <div class="col-12">
                        <div class="card-box">

                            <div class="text-center mb-2">
                                <div class="row">
                                    <div class="col-md-6 col-xl-3">
                                        <div class="card-box">
                                            <i class="fe-tag font-24"></i>
                                            <h3>255</h3>
                                            <p class="text-uppercase mb-1 font-13 font-weight-medium">Tổng đơn hàng
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3">
                                        <div class="card-box">
                                            <i class="fe-archive font-24"></i>
                                            <h3 class="text-warning">695</h3>
                                            <p class="text-uppercase mb-1 font-13 font-weight-medium">Đã bán</p>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3">
                                        <div class="card-box">
                                            <i class="fe-shield font-24"></i>
                                            <h3 class="text-success">50</h3>
                                            <p class="text-uppercase mb-1 font-13 font-weight-medium">Đơn trung bình
                                                1 tuần</p>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xl-3">
                                        <div class="card-box">
                                            <i class="fe-delete font-24"></i>
                                            <h3 class="text-danger">25</h3>
                                            <p class="text-uppercase mb-1 font-13 font-weight-medium">Đơn bị hủy</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div id="tickets-table_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="dataTables_length" id="tickets-table_length"><label>Show <select
                                                name="tickets-table_length" aria-controls="tickets-table"
                                                class="custom-select custom-select-sm form-control form-control-sm">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select> entries</label></div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div id="tickets-table_filter" class="dataTables_filter">
                                            <label>Search:<input type="search" class="form-control form-control-sm"
                                                                 placeholder="" aria-controls="tickets-table"></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table
                                                class="table table-hover m-0 table-centered dt-responsive nowrap w-100 dataTable no-footer dtr-inline"
                                                cellspacing="0" id="tickets-table" role="grid"
                                                aria-describedby="tickets-table_info" style="width: 1180px;">
                                            <thead class="bg-light">
                                            <tr role="row">
                                                <th class="font-weight-medium sorting_asc" tabindex="0"
                                                    aria-controls="tickets-table" rowspan="1" colspan="1"
                                                    style="width: 23.4px;" aria-sort="ascending"
                                                    aria-label="ID: activate to sort column descending">ID</th>
                                                <th class="font-weight-medium sorting" tabindex="0"
                                                    aria-controls="tickets-table" rowspan="1" colspan="1"
                                                    style="width: 145.4px;">Tên</th>
                                                <th class="font-weight-medium sorting" tabindex="0"
                                                    aria-controls="tickets-table" rowspan="1" colspan="1"
                                                    style="width: 256.4px;"
                                                    aria-label="Subject: activate to sort column ascending">Vị
                                                    trí</th>
                                                <th class="font-weight-medium sorting" tabindex="0"
                                                    aria-controls="tickets-table" rowspan="1" colspan="1">Đã bán
                                                </th>
                                                <th class="font-weight-medium sorting" tabindex="0"
                                                    aria-controls="tickets-table" rowspan="1" colspan="1"
                                                    style="width: 52.4px;"
                                                    aria-label="Priority: activate to sort column ascending">
                                                    Đánh giá</th>
                                                <th class="font-weight-medium sorting" tabindex="0"
                                                    aria-controls="tickets-table" rowspan="1" colspan="1"
                                                    style="width: 91.4px;"
                                                    aria-label="Created Date: activate to sort column ascending">
                                                    Ngày kí HĐ</th>
                                                <th class="font-weight-medium sorting" tabindex="0"
                                                    aria-controls="tickets-table" rowspan="1" colspan="1"
                                                    style="width: 65.4px;"
                                                    aria-label="Due Date: activate to sort column ascending">
                                                    Ngày hết HĐ</th>
                                                <th class="font-weight-medium sorting" tabindex="0"
                                                    aria-controls="tickets-table" rowspan="1" colspan="1"
                                                    style="width: 47.4px;"
                                                    aria-label="Action: activate to sort column ascending">
                                                    Action</th>
                                            </tr>
                                            </thead>

                                            <tbody class="font-14">






























                                            <tr role="row" class="odd">
                                                <td tabindex="0" class="sorting_1"><b>#01</b></td>
                                                <td>
                                                    <a href="javascript: void(0);" class="text-dark">
                                                        <img src="assets/images/users/duc.jpg" alt="contact-img"
                                                             title="contact-img"
                                                             class="avatar-sm rounded-circle img-thumbnail">
                                                        <span class="ml-2">Nguyễn Thái Đức</span>
                                                    </a>
                                                </td>

                                                <td>
                                                    <p class="text-center">Seller</p>
                                                </td>

                                                <td>
                                                    55
                                                </td>

                                                <td>
                                                    <span class="badge badge-warning">Medium</span>
                                                </td>



                                                <td>
                                                    11/08/2021
                                                </td>

                                                <td>
                                                    30/08/2022
                                                </td>

                                                <td>
                                                    <div class="btn-group dropdown">
                                                        <a href="javascript: void(0);"
                                                           class="dropdown-toggle arrow-none btn btn-light btn-sm"
                                                           data-toggle="dropdown" aria-expanded="false"><i
                                                                class="mdi mdi-dots-horizontal"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#"><i
                                                                    class="mdi mdi-pencil mr-2 text-muted font-18 vertical-middle"></i>Sửa
                                                            </a>

                                                            <a class="dropdown-item" href="#"><i
                                                                    class="mdi mdi-delete mr-2 text-muted font-18 vertical-middle"></i>Xóa</a>
                                                            <a class="dropdown-item" href="#"><i
                                                                    class="mdi mdi-star mr-2 font-18 text-muted vertical-middle"></i>Đánh
                                                                dấu</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td tabindex="0" class="sorting_1"><b>#02</b></td>
                                                <td>
                                                    <a href="javascript: void(0);" class="text-dark">
                                                        <img src="assets/images/users/tuan.jpg"
                                                             alt="contact-img" title="contact-img"
                                                             class="avatar-sm rounded-circle img-thumbnail">
                                                        <span class="ml-2">Bùi Anh Tuấn</span>
                                                    </a>
                                                </td>

                                                <td>
                                                    <p class="text-center">Seller</p>
                                                </td>

                                                <td>
                                                    100
                                                </td>

                                                <td>
                                                    <span class="badge badge-danger">High</span>
                                                </td>



                                                <td>
                                                    01/04/2021
                                                </td>

                                                <td>
                                                    21/05/2022
                                                </td>

                                                <td>
                                                    <div class="btn-group dropdown">
                                                        <a href="javascript: void(0);"
                                                           class="dropdown-toggle arrow-none btn btn-light btn-sm"
                                                           data-toggle="dropdown" aria-expanded="false"><i
                                                                class="mdi mdi-dots-horizontal"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#"><i
                                                                    class="mdi mdi-pencil mr-2 text-muted font-18 vertical-middle"></i>Sửa
                                                            </a>

                                                            <a class="dropdown-item" href="#"><i
                                                                    class="mdi mdi-delete mr-2 text-muted font-18 vertical-middle"></i>Xóa</a>
                                                            <a class="dropdown-item" href="#"><i
                                                                    class="mdi mdi-star mr-2 font-18 text-muted vertical-middle"></i>Đánh
                                                                dấu</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td tabindex="0" class="sorting_1"><b>#3</b></td>
                                                <td>
                                                    <a href="javascript: void(0);" class="text-dark">
                                                        <img src="assets/images/users/thuy.jpg"
                                                             alt="contact-img" title="contact-img"
                                                             class="avatar-sm rounded-circle img-thumbnail">
                                                        <span class="ml-2">Trần Thị Mỹ Thùy</span>
                                                    </a>
                                                </td>

                                                <td>
                                                    <p class="text-center">Seller</p>
                                                </td>

                                                <td>
                                                    100
                                                </td>

                                                <td>
                                                    <span class="badge badge-danger">High</span>
                                                </td>



                                                <td>
                                                    28/02/2021
                                                </td>

                                                <td>
                                                    28/04/2022
                                                </td>

                                                <td>
                                                    <div class="btn-group dropdown">
                                                        <a href="javascript: void(0);"
                                                           class="dropdown-toggle arrow-none btn btn-light btn-sm"
                                                           data-toggle="dropdown" aria-expanded="false"><i
                                                                class="mdi mdi-dots-horizontal"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#"><i
                                                                    class="mdi mdi-pencil mr-2 text-muted font-18 vertical-middle"></i>Sửa
                                                            </a>

                                                            <a class="dropdown-item" href="#"><i
                                                                    class="mdi mdi-delete mr-2 text-muted font-18 vertical-middle"></i>Xóa</a>
                                                            <a class="dropdown-item" href="#"><i
                                                                    class="mdi mdi-star mr-2 font-18 text-muted vertical-middle"></i>Đánh
                                                                dấu</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-5">
                                        <div class="dataTables_info" id="tickets-table_info" role="status"
                                             aria-live="polite">Showing 1 to 10 of 15 entries</div>
                                    </div>
                                    <div class="col-sm-12 col-md-7">
                                        <div class="dataTables_paginate paging_simple_numbers"
                                             id="tickets-table_paginate">
                                            <ul class="pagination pagination-rounded">
                                                <li class="paginate_button page-item previous disabled"
                                                    id="tickets-table_previous"><a href="#"
                                                                                   aria-controls="tickets-table" data-dt-idx="0" tabindex="0"
                                                                                   class="page-link"><i class="mdi mdi-chevron-left"></i></a>
                                                </li>
                                                <li class="paginate_button page-item active"><a href="#"
                                                                                                aria-controls="tickets-table" data-dt-idx="1" tabindex="0"
                                                                                                class="page-link">1</a></li>
                                                <li class="paginate_button page-item "><a href="#"
                                                                                          aria-controls="tickets-table" data-dt-idx="2" tabindex="0"
                                                                                          class="page-link">2</a></li>
                                                <li class="paginate_button page-item next" id="tickets-table_next">
                                                    <a href="#" aria-controls="tickets-table" data-dt-idx="3"
                                                       tabindex="0" class="page-link"><i
                                                            class="mdi mdi-chevron-right"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- end col -->
                </div>























            </div> <!-- container -->

        </div> <!-- content -->

        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        2020 &copy; Daisan admin by <a href="">Group 17</a>
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
<!-- END wrapper -->>

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
