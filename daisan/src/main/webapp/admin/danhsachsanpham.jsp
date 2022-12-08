<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 8/12/2022
  Time: 7:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Daisan | Danh sách sản phẩm
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
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
                <a class="nav-link dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"
                   role="button" aria-haspopup="false" aria-expanded="false">
                    Daisan
                    <i class="mdi mdi-chevron-down"></i>
                </a>
                <div class="dropdown-menu">
                    <!-- item-->
                    <a href="404.html" class="dropdown-item">

                        <span>Chọn cửa hàng</span>
                    </a>

                    <!-- item-->
                    <a href="404.html" class="dropdown-item">

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
                    <a href="taikhoanadmin.html" class="dropdown-item notify-item">
                        <i class="remixicon-account-circle-line"></i>
                        <span>Tài khoản</span>
                    </a>

                    <!-- item-->
                    <a href="404.html" class="dropdown-item notify-item">
                        <i class="remixicon-lock-unlock-line"></i>
                        <span>Đổi mật khẩu</span>
                    </a>

                    <!-- item-->
                    <a href="404.html" class="dropdown-item notify-item">
                        <i class="remixicon-settings-3-line"></i>
                        <span>Cài đặt</span>
                    </a>

                    <div class="dropdown-divider"></div>

                    <!-- item-->
                    <a href="dangxuat.html" class="dropdown-item notify-item">
                        <i class="remixicon-logout-box-line"></i>
                        <span>Đăng xuất</span>
                    </a>

                </div>
            </li>

        </ul>

        <!-- LOGO -->
        <div class="logo-box">
            <a href="index.html" class="logo text-center">
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
                        <a href="trangchu.html" class="waves-effect">
                            <i class="fas fa-home"></i>
                            <span> Trang chủ </span>
                        </a>
                    </li>

                    <li>
                        <a href="banhangthungan.html" class="waves-effect">
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
                                <a href="danhsachkhachhang.html">Danh sách khách hàng</a>
                            </li>
                            <li>
                                <a href="chatvoikhachhang.html">Chat với khách hàng</a>
                            </li>


                        </ul>
                    </li>

                    <li>
                        <a href="danhsachdonhang.html" class="waves-effect">
                            <i class="fas fa-shopping-cart"></i>
                            <span> Đơn hàng </span>

                        </a>
                    </li>

                    <li>
                        <a href="danhsachsanpham.html" class="waves-effect">
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
                                <a href="danhsachcongtacvien.html">Danh sách CTV</a>
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
                                <a href="404.html">Sửa thông tin</a>
                            </li>
                            <li>
                                <a href="404.html">Cấu hình</a>
                            </li>
                            <li>
                                <a href="taikhoanadmin.html">Tài khoản Admin</a>
                            </li>



                        </ul>
                    </li>

                    <li>
                        <a href="quanliblog.html" class="waves-effect">
                            <i class="fas fa-newspaper"></i>

                            <span> Blog </span>
                            <!-- <span class="menu-arrow"></span> -->
                        </a>

                    </li>

                    <li>
                        <a href="quanlidanhmuc.html" class="waves-effect">
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
                                <a href="404.html">Bảng tổng hợp</a>
                            </li>
                            <li>
                                <a href="dothi.html">Đồ thị</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="404.html" class="waves-effect">
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
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Sản phẩm</a></li>
                                    <li class="breadcrumb-item active">Danh sách sản phẩm</li>
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
                                        <a href="themsanpham.html" class="btn btn-danger mb-2"><i
                                                class="mdi mdi-plus-circle mr-1"></i> Thêm sản phẩm</a>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="float-sm-right">

                                            <button type="button" class="btn btn-success mb-2 mb-sm-0"><i
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
                                                <div class="dataTables_length" id="products-datatable_length">
                                                    <label>Display <select
                                                            class="custom-select custom-select-sm ml-1 mr-1">
                                                        <option value="10">10</option>
                                                        <option value="20">20</option>
                                                        <option value="-1">All</option>
                                                    </select> customers</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-6">
                                                <div id="products-datatable_filter" class="dataTables_filter">
                                                    <label>Search:<input type="search"
                                                                         class="form-control form-control-sm" placeholder=""
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
                                                        role="grid" aria-describedby="products-datatable_info">
                                                    <thead class="thead-light">
                                                    <tr role="row">
                                                        <th class="all dt-checkboxes-cell dt-checkboxes-select-all sorting_disabled"
                                                            style="width: 28.8px;" rowspan="1" colspan="1"
                                                            data-col="0" aria-label="


                                                                &amp;nbsp;

                                                        ">
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox"
                                                                    class="custom-control-input dt-checkboxes"><label
                                                                    class="custom-control-label">&nbsp;</label>
                                                            </div>
                                                        </th>
                                                        <th class="all sorting" tabindex="0"
                                                            aria-controls="products-datatable" rowspan="1"
                                                            colspan="1" style="width: 283.4px;"
                                                            aria-label="Product: activate to sort column ascending">
                                                            Sản phẩm</th>
                                                        <th class="sorting" tabindex="0"
                                                            aria-controls="products-datatable" rowspan="1"
                                                            colspan="1" style="width: 57.4px;"
                                                            aria-label="Rating: activate to sort column ascending">
                                                            Đánh giá</th>
                                                        <th class="sorting" tabindex="0"
                                                            aria-controls="products-datatable" rowspan="1"
                                                            colspan="1" style="width: 78.4px;"
                                                            aria-label="Category: activate to sort column ascending">
                                                            Danh mục</th>
                                                        <th class="sorting" tabindex="0"
                                                            aria-controls="products-datatable" rowspan="1"
                                                            colspan="1" style="width: 99.4px;"
                                                            aria-label="Added Date: activate to sort column ascending">
                                                            Ngày thêm</th>
                                                        <th class="sorting_asc" tabindex="0"
                                                            aria-controls="products-datatable" rowspan="1"
                                                            colspan="1" style="width: 45.4px;"
                                                            aria-sort="ascending"
                                                            aria-label="Price: activate to sort column descending">
                                                            Giá</th>
                                                        <th class="sorting" tabindex="0"
                                                            aria-controls="products-datatable" rowspan="1"
                                                            colspan="1" style="width: 74.4px;"
                                                            aria-label="Quantity: activate to sort column ascending">
                                                            Số lượng</th>
                                                        <th class="sorting" tabindex="0"
                                                            aria-controls="products-datatable" rowspan="1"
                                                            colspan="1" style="width: 56.4px;"
                                                            aria-label="Status: activate to sort column ascending">
                                                            Trạng thái</th>
                                                        <th style="width: 96.8px;" class="sorting_disabled"
                                                            rowspan="1" colspan="1" aria-label="Action">Tác vụ
                                                        </th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>












                                                    <tr role="row" class="odd">
                                                        <td tabindex="0" class="dt-checkboxes-cell">
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox"
                                                                    class="custom-control-input dt-checkboxes"><label
                                                                    class="custom-control-label">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <img src="../assets/images/products/gachoplat/p1.jpg"
                                                                 alt="contact-img" title="contact-img"
                                                                 class="rounded mr-3" height="48">

                                                            <h5 class="m-0 d-inline-block align-middle"><a
                                                                    href="#" class="text-dark">Gạch ốp lát
                                                                Eurotile BST Vọng Cát 600*600mm
                                                                VOC-H03</a></h5>
                                                        </td>
                                                        <td>
                                                                    <span class="badge badge-success"><i
                                                                            class="mdi mdi-star"></i> 4.9</span>
                                                        </td>
                                                        <td>
                                                            Gạch ốp lát
                                                        </td>
                                                        <td>
                                                            09 Tháng 3, 2022
                                                        </td>
                                                        <td class="sorting_1">
                                                            <div>
                                                                420.850đ
                                                            </div>
                                                        </td>

                                                        <td>
                                                            112
                                                        </td>
                                                        <td>
                                                            <span class="badge badge-soft-success">Active</span>
                                                        </td>

                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-eye"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-square-edit-outline"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <button type="button"
                                                                            class="btn btn-primary"
                                                                            data-toggle="modal"
                                                                            data-target="#exampleModal">
                                                                        <i class="mdi mdi-delete"></i>
                                                                    </button>
                                                                    <!-- Modal -->
                                                                    <div class="modal fade" id="exampleModal"
                                                                         tabindex="-1" role="dialog"
                                                                         aria-labelledby="exampleModalLabel"
                                                                         aria-hidden="true">
                                                                        <div class="modal-dialog"
                                                                             role="document">
                                                                            <div class="modal-content">
                                                                                <div class="modal-header">
                                                                                    <h5 class="modal-title"
                                                                                        id="exampleModalLabel">
                                                                                        Modal title</h5>
                                                                                    <button type="button"
                                                                                            class="close"
                                                                                            data-dismiss="modal"
                                                                                            aria-label="Close">
                                                                                                <span
                                                                                                        aria-hidden="true">&times;</span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                                    AABCASASDASDASDASDASDASDASDASDASD
                                                                                </div>
                                                                                <div class="modal-footer">
                                                                                    <button type="button"
                                                                                            class="btn btn-secondary"
                                                                                            data-dismiss="modal">Close</button>
                                                                                    <button type="button"
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
                                                    <tr role="row" class="even">
                                                        <td tabindex="0" class="dt-checkboxes-cell">
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox"
                                                                    class="custom-control-input dt-checkboxes"><label
                                                                    class="custom-control-label">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <img src="../assets/images/products/gachoplat/p2.jpg"
                                                                 alt="contact-img" title="contact-img"
                                                                 class="rounded mr-3" height="48">

                                                            <h5 class="m-0 d-inline-block align-middle"><a
                                                                    href="#" class="text-dark">Gạch ốp lát
                                                                Eurotile BST Vọng Cát 600*600mm H01</a></h5>
                                                        </td>
                                                        <td>
                                                                    <span class="badge badge-warning"><i
                                                                            class="mdi mdi-star"></i> 3.1</span>
                                                        </td>
                                                        <td>
                                                            Gạch ốp lát
                                                        </td>
                                                        <td>
                                                            05 Tháng 2, 2022
                                                        </td>
                                                        <td class="sorting_1">
                                                            <div>
                                                                420.850đ
                                                            </div>
                                                        </td>

                                                        <td>
                                                            60
                                                        </td>
                                                        <td>
                                                            <span class="badge badge-soft-success">Active</span>
                                                        </td>

                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-eye"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-square-edit-outline"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr role="row" class="odd">
                                                        <td tabindex="0" class="dt-checkboxes-cell">
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox"
                                                                    class="custom-control-input dt-checkboxes"><label
                                                                    class="custom-control-label">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <img src="../assets/images/products/vatlieutho/ximang/haivan.png"
                                                                 alt="contact-img" title="contact-img"
                                                                 class="rounded mr-3" height="48">

                                                            <h5 class="m-0 d-inline-block align-middle"><a
                                                                    href="#" class="text-dark">Xi măng Hải
                                                                Vân</a>
                                                            </h5>
                                                        </td>
                                                        <td>
                                                                    <span class="badge badge-success"><i
                                                                            class="mdi mdi-star"></i> 4.3</span>
                                                        </td>
                                                        <td>
                                                            Vật Liệu Thô
                                                        </td>
                                                        <td>
                                                            02 tháng 1, 2022
                                                        </td>
                                                        <td class="sorting_1">
                                                            <div>
                                                                90.000đ
                                                            </div>
                                                        </td>

                                                        <td>
                                                            58
                                                        </td>
                                                        <td>
                                                                    <span
                                                                            class="badge badge-soft-danger">Deactive</span>
                                                        </td>

                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-eye"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-square-edit-outline"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr role="row" class="even">
                                                        <td tabindex="0" class="dt-checkboxes-cell">
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox"
                                                                    class="custom-control-input dt-checkboxes"><label
                                                                    class="custom-control-label">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <img src="../assets/images/products/vatlieutho/ximang/hoanglong.png"
                                                                 alt="contact-img" title="contact-img"
                                                                 class="rounded mr-3" height="48">

                                                            <h5 class="m-0 d-inline-block align-middle"><a
                                                                    href="#" class="text-dark">Xi măng Hoàng
                                                                Long</a>
                                                            </h5>
                                                        </td>
                                                        <td>
                                                                    <span class="badge badge-success"><i
                                                                            class="mdi mdi-star"></i> 4.9</span>
                                                        </td>
                                                        <td>
                                                            Vật Liệu Thô
                                                        </td>
                                                        <td>
                                                            27 tháng 9, 2022
                                                        </td>
                                                        <td class="sorting_1">
                                                            <div>
                                                                89.000đ
                                                            </div>
                                                        </td>

                                                        <td>
                                                            98
                                                        </td>
                                                        <td>
                                                            <span class="badge badge-soft-success">Active</span>
                                                        </td>

                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-eye"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-square-edit-outline"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr role="row" class="odd">
                                                        <td tabindex="0" class="dt-checkboxes-cell">
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox"
                                                                    class="custom-control-input dt-checkboxes"><label
                                                                    class="custom-control-label">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <img src="../assets/images/products/daoplat/p1.jpeg"
                                                                 alt="contact-img" title="contact-img"
                                                                 class="rounded mr-3" height="48">

                                                            <h5 class="m-0 d-inline-block align-middle"><a
                                                                    href="#" class="text-dark">Mosaic Xà Cừ Khảm
                                                                Trai 300x300 MS07</a></h5>
                                                        </td>
                                                        <td>
                                                                    <span class="badge badge-danger"><i
                                                                            class="mdi mdi-star"></i> 2.5</span>
                                                        </td>
                                                        <td>
                                                            Đá ốp lát
                                                        </td>
                                                        <td>
                                                            23 tháng 6, 2022
                                                        </td>
                                                        <td class="sorting_1">
                                                            <div>
                                                                1.850.000đ
                                                            </div>
                                                        </td>

                                                        <td>
                                                            85
                                                        </td>
                                                        <td>
                                                                    <span
                                                                            class="badge badge-soft-danger">Deactive</span>
                                                        </td>

                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-eye"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-square-edit-outline"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr role="row" class="even">
                                                        <td tabindex="0" class="dt-checkboxes-cell">
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox"
                                                                    class="custom-control-input dt-checkboxes"><label
                                                                    class="custom-control-label">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <img src="../assets/images/products/gachoplat/p3.jpg"
                                                                 alt="contact-img" title="contact-img"
                                                                 class="rounded mr-3" height="48">

                                                            <h5 class="m-0 d-inline-block align-middle"><a
                                                                    href="#" class="text-dark">Gạch ốp lát
                                                                Eurotile BST Vọng Cát 600*600mm H01</a>
                                                            </h5>
                                                        </td>
                                                        <td>
                                                                    <span class="badge badge-warning"><i
                                                                            class="mdi mdi-star"></i> 3.4</span>
                                                        </td>
                                                        <td>
                                                            Gạch ốp lát
                                                        </td>
                                                        <td>
                                                            21 Tháng 4, 2022
                                                        </td>
                                                        <td class="sorting_1">
                                                            <div>
                                                                2.500.000đ
                                                            </div>
                                                        </td>

                                                        <td>
                                                            88
                                                        </td>
                                                        <td>
                                                            <span class="badge badge-soft-success">Active</span>
                                                        </td>

                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-eye"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-square-edit-outline"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr role="row" class="odd">
                                                        <td tabindex="0" class="dt-checkboxes-cell">
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox"
                                                                    class="custom-control-input dt-checkboxes"><label
                                                                    class="custom-control-label">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <img src="../assets/images/products/vatlieutho/satthep/thepgocL40.png"
                                                                 alt="contact-img" title="contact-img"
                                                                 class="rounded mr-3" height="48">

                                                            <h5 class="m-0 d-inline-block align-middle"><a
                                                                    href="#" class="text-dark">Thép góc L40
                                                                <Var></Var></a></h5>
                                                        </td>
                                                        <td>
                                                                    <span class="badge badge-success"><i
                                                                            class="mdi mdi-star"></i> 4.5</span>
                                                        </td>
                                                        <td>
                                                            Vật Liệu Thô
                                                        </td>
                                                        <td>
                                                            19 Tháng 12, 2022
                                                        </td>
                                                        <td class="sorting_1">
                                                            <div>
                                                                550.000đ
                                                            </div>
                                                        </td>

                                                        <td>
                                                            82
                                                        </td>
                                                        <td>
                                                            <span class="badge badge-soft-success">Active</span>
                                                        </td>

                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-eye"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-square-edit-outline"></i></a>
                                                                </li>
                                                                <li class="list-inline-item">
                                                                    <a href="javascript:void(0);"
                                                                       class="action-icon"> <i
                                                                            class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 col-md-5">
                                                <div class="dataTables_info" id="products-datatable_info"
                                                     role="status" aria-live="polite">Hiển thị khách hàng từ 1 đến 10
                                                    của 12
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-7">
                                                <div class="dataTables_paginate paging_simple_numbers"
                                                     id="products-datatable_paginate">
                                                    <ul class="pagination pagination-rounded">
                                                        <li class="paginate_button page-item previous disabled"
                                                            id="products-datatable_previous"><a href="#"
                                                                                                aria-controls="products-datatable" data-dt-idx="0"
                                                                                                tabindex="0" class="page-link"><i
                                                                class="mdi mdi-chevron-left"></i></a></li>
                                                        <li class="paginate_button page-item active"><a href="#"
                                                                                                        aria-controls="products-datatable" data-dt-idx="1"
                                                                                                        tabindex="0" class="page-link">1</a></li>
                                                        <li class="paginate_button page-item "><a href="#"
                                                                                                  aria-controls="products-datatable" data-dt-idx="2"
                                                                                                  tabindex="0" class="page-link">2</a></li>
                                                        <li class="paginate_button page-item next"
                                                            id="products-datatable_next"><a href="#"
                                                                                            aria-controls="products-datatable" data-dt-idx="3"
                                                                                            tabindex="0" class="page-link"><i
                                                                class="mdi mdi-chevron-right"></i></a></li>
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
<script src="assets\js\vendor.min.js"></script>

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
<script src="assets\js\app.min.js"></script>

<script src="../assets/js/test.js"></script>

</body>

</html>
