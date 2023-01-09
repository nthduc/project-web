<%@ page import="vn.edu.hcmuaf.fit.bean.ProductBean" %>
    <%@ page import="java.util.List" %>
        <%@ page import="vn.edu.hcmuaf.fit.services.ProductService" %>
            <%@ page contentType="text/html;charset=UTF-8" language="java" %>
                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                    <%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
                        <html lang="en">

                        <head>
                            <meta charset="utf-8">
                            <title>Daisan | Danh sách sản phẩm
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
                                                        data-toggle="dropdown" href="taikhoanadmin.jsp" role="button"
                                                        aria-haspopup="false" aria-expanded="false">
                                                        <img src="https://i.imgur.com/GHS1690.png" alt="user-image"
                                                            class="rounded-circle">
                                                        <span class="pro-user-name ml-1">
                                                            ${sessionScope.user.fullname} <i
                                                                class="mdi mdi-chevron-down"></i>
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
                                                            <a href="baocaodoanhthucongtacvien.jsp">Báo cáo doanh thu
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
                                                                        href="javascript: void(0);">Sản phẩm</a></li>
                                                                <li class="breadcrumb-item active">Danh sách sản phẩm
                                                                </li>
                                                            </ol>
                                                        </div>
                                                        <h4 class="page-title">DANH SÁCH SẢN PHẨM</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end page title -->
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <div class="row mb-2">
                                                                <div class="col-sm-6">
                                                                    <a href="themsanpham.jsp"
                                                                        class="btn btn-danger mb-2"><i
                                                                            class="mdi mdi-plus-circle mr-1"></i> Thêm
                                                                        sản phẩm</a>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="float-sm-right">

                                                                        <button type="button"
                                                                            class="btn btn-success mb-2 mb-sm-0"><i
                                                                                class="mdi mdi-cogs"></i></button>

                                                                    </div>
                                                                </div><!-- end col-->
                                                            </div>
                                                            <!-- end row -->

                                                            <div class="table-responsive">
                                                                <div id="products-datatable_wrapper"
                                                                    class="dataTables_wrapper dt-bootstrap4 no-footer">
                                                                    <div class="row">
                                                                        <div class="col-sm-12 col-md-6">
                                                                            <div class="dataTables_length"
                                                                                id="products-datatable_length">
                                                                                <label>Display <select
                                                                                        class="custom-select custom-select-sm ml-1 mr-1">
                                                                                        <option value="10">10</option>
                                                                                        <option value="20">20</option>
                                                                                        <option value="-1">All</option>
                                                                                    </select> customers</label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-12 col-md-6">
                                                                            <div id="products-datatable_filter"
                                                                                class="dataTables_filter">
                                                                                <label>Search:<input type="search"
                                                                                        class="form-control form-control-sm"
                                                                                        placeholder=""
                                                                                        aria-controls="products-datatable"></label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-sm-12">
                                                                            <table
                                                                                class="table table-centered w-100 dt-responsive nowrap dataTable no-footer dtr-inline"
                                                                                id="products-datatable"
                                                                                style="border-collapse: collapse; border-spacing: 0px; width: 100%;"
                                                                                role="grid"
                                                                                aria-describedby="products-datatable_info">
                                                                                <thead class="thead-light">
                                                                                    <tr role="row">
                                                                                        <th class="all dt-checkboxes-cell dt-checkboxes-select-all sorting_disabled"
                                                                                            style="width: 28.8px;"
                                                                                            rowspan="1" colspan="1"
                                                                                            data-col="0" aria-label="&amp;nbsp;">
                                                                                            <div
                                                                                                class="custom-control custom-checkbox">
                                                                                                <input type="checkbox"
                                                                                                    class="custom-control-input dt-checkboxes"><label
                                                                                                    class="custom-control-label">&nbsp;</label>
                                                                                            </div>
                                                                                        </th>
                                                                                        <th class="all sorting"
                                                                                            tabindex="0"
                                                                                            aria-controls="products-datatable"
                                                                                            rowspan="1" colspan="1"
                                                                                            style="width: 283.4px;"
                                                                                            aria-label="Product: activate to sort column ascending">
                                                                                            Sản phẩm</th>
                                                                                        <th class="sorting" tabindex="0"
                                                                                            aria-controls="products-datatable"
                                                                                            rowspan="1" colspan="1"
                                                                                            style="width: 57.4px;"
                                                                                            aria-label="Rating: activate to sort column ascending">
                                                                                            Giá</th>
                                                                                        <th class="sorting" tabindex="0"
                                                                                            aria-controls="products-datatable"
                                                                                            rowspan="1" colspan="1"
                                                                                            style="width: 78.4px;"
                                                                                            aria-label="Category: activate to sort column ascending">
                                                                                            Giá KM</th>
                                                                                        <th class="sorting" tabindex="0"
                                                                                            aria-controls="products-datatable"
                                                                                            rowspan="1" colspan="1"
                                                                                            style="width: 99.4px;"
                                                                                            aria-label="Added Date: activate to sort column ascending">
                                                                                            Thông tin</th>
                                                                                        <th class="sorting_asc"
                                                                                            tabindex="0"
                                                                                            aria-controls="products-datatable"
                                                                                            rowspan="1" colspan="1"
                                                                                            style="width: 45.4px;"
                                                                                            aria-sort="ascending"
                                                                                            aria-label="Price: activate to sort column descending">
                                                                                            Status</th>
                                                                                        <th class="sorting" tabindex="0"
                                                                                            aria-controls="products-datatable"
                                                                                            rowspan="1" colspan="1"
                                                                                            style="width: 74.4px;"
                                                                                            aria-label="Quantity: activate to sort column ascending">
                                                                                            Company</th>
                                                                                        <th class="sorting" tabindex="0"
                                                                                            aria-controls="products-datatable"
                                                                                            rowspan="1" colspan="1"
                                                                                            style="width: 56.4px;"
                                                                                            aria-label="Status: activate to sort column ascending">
                                                                                            TAG</th>
                                                                                        <th style="width: 96.8px;"
                                                                                            class="sorting_disabled"
                                                                                            rowspan="1" colspan="1"
                                                                                            aria-label="Action">Tác vụ
                                                                                        </th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <% List<ProductBean> products =
                                                                                        ProductService.getInstance().getAllProducts();
                                                                                        for (ProductBean product :
                                                                                        products) {
                                                                                        %>
                                                                                        <tr role="row" class="odd">
                                                                                            <td tabindex="0"
                                                                                                class="dt-checkboxes-cell">
                                                                                                <div
                                                                                                    class="custom-control custom-checkbox">
                                                                                                    <input
                                                                                                        type="checkbox"
                                                                                                        class="custom-control-input dt-checkboxes"><label
                                                                                                        class="custom-control-label">&nbsp;</label>
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <img src="../<%= product.getImgURL() %>"
                                                                                                    alt="contact-img"
                                                                                                    title="contact-img"
                                                                                                    class="rounded mr-3"
                                                                                                    height="48">

                                                                                                <h5
                                                                                                    class="m-0 d-inline-block align-middle">
                                                                                                    <a href="#"
                                                                                                        class="text-dark">
                                                                                                        <%=
                                                                                                            product.getName()%>
                                                                                                    </a>
                                                                                                </h5>
                                                                                            </td>
                                                                                            <td>

                                                                                                <%= product.getPrice()%>
                                                                                            </td>
                                                                                            <td>
                                                                                                <%=
                                                                                                    product.getSalePrice()%>
                                                                                            </td>
                                                                                            <td>
                                                                                                <%=
                                                                                                    product.getDescription()%>
                                                                                            </td>
                                                                                            <td class="sorting_1">
                                                                                                <div>
                                                                                                    <%= product.getStatus()
                                                                                                        %>
                                                                                                </div>
                                                                                            </td>

                                                                                            <td>
                                                                                                <%= product.getCompany()
                                                                                                    %>
                                                                                            </td>
                                                                                            <td>
                                                                                                <span
                                                                                                    class="badge badge-soft-success">
                                                                                                    <%= product.getTag_ID()
                                                                                                        %>
                                                                                                </span>
                                                                                            </td>

                                                                                            <td>
                                                                                                <ul
                                                                                                    class="list-inline table-action m-0">
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
                                                                                                        <button
                                                                                                            type="button"
                                                                                                            class="btn btn-primary"
                                                                                                            data-toggle="modal"
                                                                                                            data-target="#exampleModal">
                                                                                                            <i
                                                                                                                class="mdi mdi-delete"></i>
                                                                                                        </button>
                                                                                                        <!-- Modal -->
                                                                                                        <div class="modal fade"
                                                                                                            id="exampleModal"
                                                                                                            tabindex="-1"
                                                                                                            role="dialog"
                                                                                                            aria-labelledby="exampleModalLabel"
                                                                                                            aria-hidden="true">
                                                                                                            <div class="modal-dialog"
                                                                                                                role="document">
                                                                                                                <div
                                                                                                                    class="modal-content">
                                                                                                                    <div
                                                                                                                        class="modal-header">
                                                                                                                        <h5 class="modal-title"
                                                                                                                            id="exampleModalLabel">
                                                                                                                            Xóa
                                                                                                                            sản
                                                                                                                            phẩm
                                                                                                                        </h5>
                                                                                                                        <button
                                                                                                                            type="button"
                                                                                                                            class="close"
                                                                                                                            data-dismiss="modal"
                                                                                                                            aria-label="Close">
                                                                                                                            <span
                                                                                                                                aria-hidden="true">&times;</span>
                                                                                                                        </button>
                                                                                                                    </div>
                                                                                                                    <div
                                                                                                                        class="modal-body">
                                                                                                                        Bạn
                                                                                                                        có
                                                                                                                        muốn
                                                                                                                        xóa
                                                                                                                        sản
                                                                                                                        phẩm
                                                                                                                        này
                                                                                                                        ?
                                                                                                                    </div>
                                                                                                                    <div
                                                                                                                        class="modal-footer">
                                                                                                                        <button
                                                                                                                            type="button"
                                                                                                                            class="btn btn-secondary"
                                                                                                                            data-dismiss="modal">Close</button>
                                                                                                                        <button
                                                                                                                            type="button"
                                                                                                                            class="btn btn-primary">Save
                                                                                                                            changes</button>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <!-- <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a> -->
                                                                                                    </li>
                                                                                                </ul>
                                                                                            </td>
                                            
                                                                                        </tr>
                                                                                        <%}%>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-sm-12 col-md-5">
                                                                            <div class="dataTables_info"
                                                                                id="products-datatable_info"
                                                                                role="status" aria-live="polite">Hiển
                                                                                thị khách hàng từ 1 đến 10
                                                                                của 12
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-12 col-md-7">
                                                                            <div class="dataTables_paginate paging_simple_numbers"
                                                                                id="products-datatable_paginate">
                                                                                <ul
                                                                                    class="pagination pagination-rounded">
                                                                                    <li class="paginate_button page-item previous disabled"
                                                                                        id="products-datatable_previous">
                                                                                        <a href="#"
                                                                                            aria-controls="products-datatable"
                                                                                            data-dt-idx="0" tabindex="0"
                                                                                            class="page-link"><i
                                                                                                class="mdi mdi-chevron-left"></i></a>
                                                                                    </li>
                                                                                    <li
                                                                                        class="paginate_button page-item active">
                                                                                        <a href="#"
                                                                                            aria-controls="products-datatable"
                                                                                            data-dt-idx="1" tabindex="0"
                                                                                            class="page-link">1</a>
                                                                                    </li>
                                                                                    <li
                                                                                        class="paginate_button page-item ">
                                                                                        <a href="#"
                                                                                            aria-controls="products-datatable"
                                                                                            data-dt-idx="2" tabindex="0"
                                                                                            class="page-link">2</a>
                                                                                    </li>
                                                                                    <li class="paginate_button page-item next"
                                                                                        id="products-datatable_next"><a
                                                                                            href="#"
                                                                                            aria-controls="products-datatable"
                                                                                            data-dt-idx="3" tabindex="0"
                                                                                            class="page-link"><i
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

                            <!-- Right Sidebar -->
                            <!-- /Right-bar -->

                            <!-- Right bar overlay-->
                            <div class="rightbar-overlay"></div>

                            <!-- Vendor js -->
                            <script src="./assets/js/vendor.min.js"></script>

                            <!-- third party js -->
                            <script src="./assets/libs/datatables/jquery.dataTables.min.js" type="module"></script>
                            <script src="./assets/libs/datatables/dataTables.bootstrap4.js"></script>
                            <script src="./assets/libs/datatables/dataTables.responsive.min.js"></script>
                            <script src="./assets/libs/datatables/responsive.bootstrap4.min.js"></script>
                            <script src="./assets/libs/datatables/dataTables.buttons.min.js"></script>
                            <script src="./assets/libs/datatables/buttons.bootstrap4.min.js"></script>
                            <script src="./assets/libs/datatables/buttons.html5.min.js"></script>
                            <script src="./assets/libs/datatables/buttons.flash.min.js"></script>
                            <script src="./assets/libs/datatables/buttons.print.min.js"></script>
                            <script src="./assets/libs/datatables/dataTables.keyTable.min.js"></script>
                            <script src="./assets/libs/datatables/dataTables.select.min.js"></script>
                            <script src="./assets/libs/pdfmake/pdfmake.min.js"></script>
                            <script src="./assets/libs/pdfmake/vfs_fonts.js"></script>
                            <!-- third party js ends -->

                            <!-- Datatables init -->
                            <script src="./assets/js/pages/datatables.init.js"></script>

                            <!-- App js -->
                            <script src="./assets/js/app.min.js"></script>

                            <script src="../assets/js/test.js"></script>

                        </body>

                        </html>