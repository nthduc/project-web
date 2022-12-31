<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 8/12/2022
  Time: 7:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Daisan | Thông tin chung</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
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
          <img src="assets\images\users\duc.jpg" alt="user-image" class="rounded-circle">
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
                        <img src="assets/images/favicon.ico" alt="" height="24">
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

          <li class="menu-title">DAISAN ADMIN</li>

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
                  <li class="breadcrumb-item"><a href="trangchu.jsp">Admin</a></li>
                  <li class="breadcrumb-item active">Thông tin chung</li>
                </ol>
              </div>
              <h4 class="page-title">THÔNG TIN CHUNG</h4>
            </div>
          </div>
        </div>
        <!-- end page title -->

        <div class="row">
          <div class="col-xl-3 col-md-6">
            <div class="widget-bg-color-icon card">
              <div class="card-body">
                <div class="media">
                  <div class="avatar-lg rounded-circle bg-icon-success">
                    <i class="mdi mdi-eye font-24 avatar-title"></i>
                  </div>
                  <div class="media-body text-right align-self-center">
                    <h3 class="mt-0"><span data-plugin="counterup">150</span></h3>
                    <p class="text-muted mb-0">Lượt truy cập hằng ngày</p>
                  </div>
                </div>
              </div>
            </div>
          </div><!-- end col -->

          <div class="col-xl-3 col-md-6">
            <div class="widget-bg-color-icon card">
              <div class="card-body">
                <div class="media">
                  <div class="avatar-lg rounded-circle bg-icon-danger">
                    <i class="mdi mdi-cart-outline font-24 avatar-title"></i>
                  </div>
                  <div class="media-body text-right align-self-center">
                    <h3 class="mt-0"><span data-plugin="counterup">6,280</span></h3>
                    <p class="text-muted mb-0">Sản phẩm đã bán</p>
                  </div>
                </div>
              </div>
            </div>
          </div><!-- end col -->

          <div class="col-xl-3 col-md-6">
            <div class="widget-bg-color-icon card">
              <div class="card-body">
                <div class="media">
                  <div class="avatar-lg rounded-circle bg-icon-primary">
                    <i class="mdi mdi-tag-outline font-24 avatar-title"></i>
                  </div>
                  <div class="media-body text-right align-self-center">
                    <h3 class="mt-0"><span data-plugin="counterup">1,450</span></h3>
                    <p class="text-muted mb-0">Đơn đặt hàng mới</p>
                  </div>
                </div>
              </div>
            </div>
          </div><!-- end col -->

          <div class="col-xl-3 col-md-6">
            <div class="widget-bg-color-icon card">
              <div class="card-body">
                <div class="media">
                  <div class="avatar-lg rounded-circle bg-icon-warning">
                    <i class="mdi mdi-account-multiple-outline font-24 avatar-title"></i>
                  </div>
                  <div class="media-body text-right align-self-center">
                    <h3 class="mt-0"><span data-plugin="counterup">280</span></h3>
                    <p class="text-muted mb-0">Khách hàng mới</p>
                  </div>
                </div>
              </div>
            </div>
          </div><!-- end col -->

        </div>
        <!-- end row -->

        <div class="row">
          <div class="col-xl-4">
            <div class="card text-center">
              <div class="card-body">
                <img src="assets/images/logo.jpg" class="rounded-circle avatar-xl img-thumbnail"
                     alt="profile-image">

                <h4 class="mt-3 mb-0">Daisan</h4>
                <p class="text-muted">Vật liệu xây dựng</p>

                <button type="button"
                        class="btn btn-success btn-xs waves-effect mb-2 waves-light">Vào trang web
                  chính</button>

                <div class="text-left mt-3">
                  <h4 class="font-13 text-uppercase">Thông tin cửa hàng :</h4>

                  <div class="table-responsive">
                    <table class="table table-borderless table-sm">
                      <tbody>
                      <tr>
                        <th scope="row">Mã:</th>
                        <td class="text-muted">#1695</td>
                      </tr>
                      <tr>
                        <th scope="row">Phone:</th>
                        <td class="text-muted">0962351043</td>
                      </tr>
                      <tr>
                        <th scope="row">Email :</th>
                        <td class="text-muted">daisanadmin@gmail.com</td>
                      </tr>
                      <tr>
                        <th scope="row">Địa chỉ:</th>
                        <td class="text-muted">Khu phố 6, phường Linh Trung, quận Thủ
                          Đức, TP.HCM, Việt Nam</td>
                      </tr>
                      </tbody>
                    </table>
                  </div>
                </div>


              </div>
            </div>
          </div> <!-- end col -->
          <div class="col-xl-4">
            <div class="card-box">
              <div class="dropdown float-right">
                <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown"
                   aria-expanded="false">
                  <i class="mdi mdi-dots-horizontal"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                  <!-- item-->
                  <a href="404.jsp" class="dropdown-item">Settings</a>
                  <!-- item-->
                  <a href="404.jsp" class="dropdown-item">Download</a>
                  <!-- item-->
                  <a href="404.jsp" class="dropdown-item">Upload</a>
                  <!-- item-->
                  <a href="404.jsp" class="dropdown-item">Action</a>
                </div>
              </div>
              <h4 class="header-title">Báo cáo thu nhập</h4>
              <p class="text-muted">Dữ liệu tính từ 1/10/2022 - 31/10/2022 </p>
              <h2 class="mb-4">${sessionScope.totalAdmin}<span class=" text-primary">vnđ</span></h2>

              <div class="row mb-4">
                <div class="col-6">
                  <p class="text-muted mb-1">Tháng này</p>
                  <h3 class="mt-0 font-18">120.051.651đ</h3>
                </div>

                <div class="col-6">
                  <p class="text-muted mb-1">Tháng trước</p>
                  <h3 class="mt-0 font-18">547.898.100đ <small
                          class="badge badge-light-danger font-13">-15%</small></h3>
                </div>
              </div>

              <h5 class="font-16"><i class="mdi mdi-chart-donut text-primary"></i> Báo cáo thu nhập
                hằng tuần</h5>

              <div class="mt-5">
                                    <span data-plugin="peity-bar" data-colors="#1abc9c,#ebeff2" data-width="100%"
                                          data-height="92">5,3,9,6,5,9,7,3,5,2,9,7,2,1,3,5,2,9,7,2,5,3,9,6,5,9,7</span>
              </div>

            </div> <!-- end card-box -->
          </div> <!-- end col -->
          <div class="col-xl-4">
            <div class="card-box">
              <div class="row">
                <div class="col-md-7">
                  <div class="row align-items-center">
                    <div class="col-6 text-center">
                      <h1 class="display-4"><i class="wi wi-day-sleet text-primary"></i></h1>
                    </div>
                    <div class="col-6">
                      <div class="text-muted">
                        <h2 class="mt-1"><b>32°</b></h2>
                        <p>Nhiều mây</p>
                        <p class=" mb-0">15km/h - 37%</p>
                      </div>
                    </div>
                  </div><!-- End row -->
                </div>
                <div class="col-md-5">
                  <div class="row">
                    <div class="col-4 text-center">
                      <h4 class="text-muted mt-0">T7</h4>
                      <h3 class="my-3"><i class="wi wi-night-alt-cloudy text-primary"></i>
                      </h3>
                      <h4 class="text-muted mb-0">30<i class="wi wi-degrees"></i></h4>
                    </div>
                    <div class="col-4 text-center">
                      <h4 class="text-muted mt-0">CN</h4>
                      <h3 class="my-3"><i class="wi wi-day-sprinkle text-primary"></i></h3>
                      <h4 class="text-muted mb-0">28<i class="wi wi-degrees"></i></h4>
                    </div>
                    <div class="col-4 text-center">
                      <h4 class="text-muted mt-0">T2</h4>
                      <h3 class="my-3"><i class="wi wi-hot text-primary"></i></h3>
                      <h4 class="text-muted mb-0">33<i class="wi wi-degrees"></i></h4>
                    </div>
                  </div><!-- end row -->
                </div>
              </div><!-- end row -->
            </div><!-- cardbox -->
            <div class="card">
              <div class="card-body">
                <div class="card-widgets">
                  <a href="javascript:;" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                  <a data-toggle="collapse" href="#cardCollpase1" role="button"
                     aria-expanded="false" aria-controls="cardCollpase1"><i
                          class="mdi mdi-minus"></i></a>
                  <a href="#" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                </div>
                <h4 class="header-title mb-4">ADMIN Group 17</h4>

                <div class="media" id="cardCollpase1" class="pt-3 collapse show">
                  <img class="mr-3 rounded-circle" src="assets/images/users/duc.jpg" width="40"
                       alt="Generic placeholder image">
                  <div class="media-body">


                    <h5 class="mt-0 mb-1">Nguyễn Thái Đức</h5>

                    <span class="font-13">18130047@st.hcmuaf.edu.vn <span
                            class="badge badge-light-danger"> Full Stack</span></span>
                  </div>
                </div>

                <div class="media mt-3" id="cardCollpase1" class="pt-3 collapse show">
                  <img class="mr-3 rounded-circle" src="assets/images/users/tuan.jpg" width="40"
                       alt="Generic placeholder image">
                  <div class="media-body">

                    <h5 class="mt-0 mb-1">Bùi Anh Tuấn</h5>
                    <span class="font-13">18130151@st.hcmuaf.edu.vn <span
                            class="badge badge-light-warning">Web Designer</span></span>
                  </div>
                </div>

                <div class="media mt-3" id="cardCollpase1" class="pt-3 collapse show">
                  <img class="mr-3 rounded-circle" src="assets/images/users/thuy.jpg" width="40"
                       alt="Generic placeholder image">
                  <div class="media-body">

                    <h5 class="mt-0 mb-1">Trần Thị Mỹ Thùy</h5>
                    <span class="font-13">20130430@st.hcmuaf.edu.vn <span
                            class="badge badge-light-success">Web Developer</span></span>
                  </div>
                </div>




              </div>
              <!-- end card-body -->
            </div>
          </div>




        </div>
        <!-- end row -->

        <div class="row">
          <div class="col-xl-8">
            <div class="card">
              <div class="card-body">
                <div class="card-widgets">
                  <a href="javascript:;" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                  <a data-toggle="collapse" href="#cardCollpase1" role="button"
                     aria-expanded="false" aria-controls="cardCollpase1"><i
                          class="mdi mdi-minus"></i></a>
                  <a href="#" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                </div>
                <h4 class="header-title mt-0 mb-3">DANH SÁCH TÊN MIỀN</h4>
                <div id="cardCollpase1" class="pt-3 collapse show"
                     class="table-responsive browser_users">
                  <table class="table mb-0">
                    <thead class="thead-light">
                    <tr>
                      <th class="border-top-0">STT</th>
                      <th class="border-top-0">Tiêu Đề</th>
                      <th class="border-top-0">Trạng Thái</th>
                      <th class="border-top-0">Thời gian</th>
                    </tr>
                    <!--end tr-->
                    </thead>
                    <tbody>
                    <tr>
                      <td>1</td>
                      <td><a href="" class="text-primary">daisangroup18.tk</a></td>
                      <td>Đã trỏ vào IP</td>
                      <td>2022-10-27 16:54:16</td>

                    </tr>
                    <!--end tr-->
                    <!--end tr-->
                    </tbody>
                  </table>
                  <!--end table-->
                  <button type="button" class="btn btn-primary waves-effect waves-light"
                          style="float: right;margin-top: 1rem;">Quản lý tên miền</button>
                </div>
                <!--end /div-->
              </div>
              <!--end card-body-->
            </div>
            <div class="card">
              <div class="card-body">
                <div class="card-widgets">
                  <a href="javascript:;" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                  <a data-toggle="collapse" href="#cardCollpase1" role="button"
                     aria-expanded="false" aria-controls="cardCollpase1"><i
                          class="mdi mdi-minus"></i></a>
                  <a href="#" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                </div>
                <h4 class="header-title mt-0 mb-3">KHÁCH HÀNG MỚI NHẤT</h4>
                <div id="cardCollpase1" class="pt-3 collapse show"
                     class="table-responsive browser_users">
                  <table class="table mb-0">
                    <thead class="thead-light">
                    <tr>
                      <th class="border-top-0">ID</th>
                      <th class="border-top-0">Tên</th>
                      <th class="border-top-0">Tài khoản</th>
                      <th class="border-top-0">Tel</th>
                      <th class="border-top-0">Ngày tạo</th>
                    </tr>
                    <!--end tr-->
                    </thead>
                    <tbody>
                    <tr>
                      <td><a href="" class="text-primary">125</a></td>
                      <td><a href="" class="text-primary">Nguyễn Thái Đức</a></td>
                      <td>18130047@st.hcmuaf.edu.vn</td>
                      <td>0962351043</td>
                      <td>2022-10-27 16:54:16</td>

                    </tr>
                    <!--end tr-->
                    <!--end tr-->
                    </tbody>
                  </table>
                  <!--end table-->
                  <button type="button" class="btn btn-primary waves-effect waves-light"
                          style="float: right;margin-top: 1rem;">Xem tất cả các khách hàng</button>
                </div>
                <!--end /div-->
              </div>
              <!--end card-body-->
            </div>

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
              <a href="404.jsp">Giới thiệu</a>
              <a href="404.jsp">Trợ giúp</a>
              <a href="404.jsp">Liên hệ</a>
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
    <a href="404.jsp" class="right-bar-toggle float-right">
      <i class="fe-x noti-icon"></i>
    </a>
    <h4 class="m-0 text-white">Cài Đặt</h4>
  </div>
  <div class="slimscroll-menu">
    <!-- User box -->
    <div class="user-box">
      <div class="user-img">
        <img src="assets\images\users\avatar-1.jpg" alt="user-img" title="Mat Helme"
             class="rounded-circle img-fluid">
        <a href="404.jsp" class="user-edit"><i class="mdi mdi-pencil"></i></a>
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
        <a href="#messages1" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0 active">
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
              <input type="checkbox" class="custom-control-input" checked="" id="tabswitch2">
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
              <input type="checkbox" class="custom-control-input" checked="" id="tabswitch4">
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
          <a href="javascript: void(0);" class="btn btn-outline-success mt-3 btn-sm">Upgrade<i
                  class="ml-1 mdi mdi-arrow-right"></i></a>
        </div>

      </div>
      <div class="tab-pane show active" id="messages1">
        <div>
          <div class="inbox-widget">
            <h5 class="mt-0">Recent</h5>
            <div class="inbox-item">
              <div class="inbox-item-img"><img src="assets\images\users\avatar-2.jpg"
                                               class="rounded-circle" alt=""> <i class="online user-status"></i></div>
              <p class="inbox-item-author"><a href="javascript: void(0);"
                                              class="text-dark">Tomaslau</a></p>
              <p class="inbox-item-text">I've finished it! See you so...</p>
            </div>
            <div class="inbox-item">
              <div class="inbox-item-img"><img src="assets\images\users\avatar-3.jpg"
                                               class="rounded-circle" alt=""> <i class="away user-status"></i></div>
              <p class="inbox-item-author"><a href="javascript: void(0);"
                                              class="text-dark">Stillnotdavid</a></p>
              <p class="inbox-item-text">This theme is awesome!</p>
            </div>
            <div class="inbox-item">
              <div class="inbox-item-img"><img src="assets\images\users\avatar-4.jpg"
                                               class="rounded-circle" alt=""> <i class="online user-status"></i></div>
              <p class="inbox-item-author"><a href="javascript: void(0);"
                                              class="text-dark">Kurafire</a></p>
              <p class="inbox-item-text">Nice to meet you</p>
            </div>

            <div class="inbox-item">
              <div class="inbox-item-img"><img src="assets\images\users\avatar-5.jpg"
                                               class="rounded-circle" alt=""> <i class="busy user-status"></i></div>
              <p class="inbox-item-author"><a href="javascript: void(0);"
                                              class="text-dark">Shahedk</a></p>
              <p class="inbox-item-text">Hey! there I'm available...</p>
            </div>
            <div class="inbox-item">
              <div class="inbox-item-img"><img src="assets\images\users\avatar-6.jpg"
                                               class="rounded-circle" alt=""> <i class="user-status"></i></div>
              <p class="inbox-item-author"><a href="javascript: void(0);"
                                              class="text-dark">Adhamdannaway</a></p>
              <p class="inbox-item-text">This theme is awesome!</p>
            </div>

            <hr>
            <h5>Favorite <span class="float-right badge badge-pill badge-danger">18</span></h5>
            <hr>
            <div class="inbox-item">
              <div class="inbox-item-img"><img src="assets\images\users\avatar-7.jpg"
                                               class="rounded-circle" alt=""> <i class="busy user-status"></i></div>
              <p class="inbox-item-author"><a href="javascript: void(0);"
                                              class="text-dark">Kennith</a></p>
              <p class="inbox-item-text">I've finished it! See you so...</p>
            </div>
            <div class="inbox-item">
              <div class="inbox-item-img"><img src="assets\images\users\avatar-3.jpg"
                                               class="rounded-circle" alt=""> <i class="busy user-status"></i></div>
              <p class="inbox-item-author"><a href="javascript: void(0);"
                                              class="text-dark">Stillnotdavid</a></p>
              <p class="inbox-item-text">This theme is awesome!</p>
            </div>
            <div class="inbox-item">
              <div class="inbox-item-img"><img src="assets\images\users\avatar-10.jpg"
                                               class="rounded-circle" alt=""> <i class="online user-status"></i></div>
              <p class="inbox-item-author"><a href="javascript: void(0);"
                                              class="text-dark">Kimberling</a></p>
              <p class="inbox-item-text">Nice to meet you</p>
            </div>

            <div class="inbox-item">
              <div class="inbox-item-img"><img src="assets\images\users\avatar-4.jpg"
                                               class="rounded-circle" alt=""> <i class="user-status"></i></div>
              <p class="inbox-item-author"><a href="javascript: void(0);"
                                              class="text-dark">Kurafire</a></p>
              <p class="inbox-item-text">Hey! there I'm available...</p>
            </div>
            <div class="inbox-item">
              <div class="inbox-item-img"><img src="assets\images\users\avatar-9.jpg"
                                               class="rounded-circle" alt=""> <i class="away user-status"></i></div>
              <p class="inbox-item-author"><a href="javascript: void(0);"
                                              class="text-dark">Leonareade</a></p>
              <p class="inbox-item-text">This theme is awesome!</p>
            </div>

            <div class="text-center mt-2">
              <a href="404.jsp" class="text-muted"><i class="mdi mdi-spin mdi-loading mr-1"></i> Load
                more </a>
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
