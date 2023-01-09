<%-- Created by IntelliJ IDEA. User: ACER Date: 8/12/2022 Time: 7:14 AM To change this template use File | Settings |
  File Templates. --%>
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
        <html lang="en">

        <head>
          <meta charset="utf-8">
          <title>Daisan | Chat với khách hàng
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
                      <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown"
                        href="taikhoanadmin.jsp" role="button" aria-haspopup="false" aria-expanded="false">
                        <img src="https://i.imgur.com/GHS1690.png" alt="user-image" class="rounded-circle">
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

                      <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown"
                        href="taikhoanadmin.jsp" role="button" aria-haspopup="false" aria-expanded="false">

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
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Khách hàng</a></li>
                            <li class="breadcrumb-item active">Chat với khách hàng</li>
                          </ol>
                        </div>
                        <h4 class="page-title">CHAT VỚI KHÁCH HÀNG</h4>
                      </div>
                    </div>
                  </div>
                  <!-- end page title -->
                  <div class="row">
                    <!-- INBOX -->
                    <div class="col-xl-4">
                      <div class="card-box">
                        <h4 class="header-title mb-3">Liện hệ khách hàng</h4>

                        <div class="slimScrollDiv"
                          style="position: relative; overflow: hidden; width: auto; height: 512.6px;">
                          <div class="inbox-widget slimscroll"
                            style="max-height: 394px; overflow: hidden; width: auto; height: 512.6px;">
                            <div class="inbox-item">
                              <a href="#">
                                <div class="inbox-item-img"><img src="assets/images/users/elon.jpg"
                                    class="rounded-circle" alt=""></div>
                                <p class="inbox-item-author">Elon Musk</p>
                                <p class="inbox-item-text">Hey! Shop có mẫu này không...</p>
                                <p class="inbox-item-date">13:40 PM</p>
                              </a>
                            </div>
                            <div class="inbox-item">
                              <a href="#">
                                <div class="inbox-item-img"><img src="assets/images/users/avatar.jpg"
                                    class="rounded-circle" alt=""></div>
                                <p class="inbox-item-author">Hoàng Trung</p>
                                <p class="inbox-item-text">Tôi rất thích sản phẩm của bạn...</p>
                                <p class="inbox-item-date">13:34 PM</p>
                              </a>
                            </div>
                            <div class="inbox-item">
                              <a href="#">
                                <div class="inbox-item-img"><img src="assets/images/users/avatar.jpg"
                                    class="rounded-circle" alt=""></div>
                                <p class="inbox-item-author">Hoàng Hiệp</p>
                                <p class="inbox-item-text">Sản phẩm rất tốt!</p>
                                <p class="inbox-item-date">13:17 PM</p>
                              </a>
                            </div>

                          </div>
                          <div class="slimScrollBar"
                            style="background: rgb(158, 165, 171); width: 8px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 306.791px;">
                          </div>
                          <div class="slimScrollRail"
                            style="width: 8px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;">
                          </div>
                        </div>
                      </div>

                    </div> <!-- end col -->

                    <!-- CHAT -->
                    <div class="col-xl-8">
                      <div class="card-box">
                        <h4 class="header-title mb-3">Chat</h4>

                        <div class="chat-conversation">
                          <div class="slimScrollDiv"
                            style="position: relative; overflow: hidden; width: auto; height: 512.6px;">
                            <ul class="conversation-list slimscroll"
                              style="max-height: 340px; overflow: hidden; width: auto; height: 512.6px;">
                              <li class="clearfix">
                                <div class="chat-avatar">
                                  <img src="assets/images/users/elon.jpg" alt="male">
                                  <i>10:00</i>
                                </div>
                                <div class="conversation-text">
                                  <div class="ctext-wrap">
                                    <i>Elon Musk</i>
                                    <p>
                                      Hello!
                                    </p>
                                  </div>
                                </div>
                              </li>



                            </ul>
                            <div class="slimScrollBar"
                              style="background: rgb(158, 165, 171); width: 8px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; height: 315.847px;">
                            </div>
                            <div class="slimScrollRail"
                              style="width: 8px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;">
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-sm-9">
                              <input type="text" class="form-control chat-input" placeholder="Nhập nội dung">
                            </div>
                            <div class="col-sm-3">
                              <button type="submit"
                                class="btn btn-primary chat-send btn-block waves-effect waves-light">Gửi</button>
                            </div>
                          </div>
                        </div>
                      </div>

                    </div> <!-- end col-->



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

          <!-- third party js -->
          <script src="assets\libs\datatables\jquery.dataTables.min.js"></script>
          <script src="assets\libs\datatables\dataTables.bootstrap4.js"></script>
          <script src="assets\libs\datatables\dataTables.responsive.min.js"></script>
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
          <!-- Vendor js -->
          <script src="assets/js/vendor.min.js"></script>

          <!-- Moment  -->
          <script src="assets\libs\moment\moment.min.js"></script>
          <script src="assets\libs\jquery-scrollto\jquery.scrollTo.min.js"></script>
          <script src="assets\libs\sweetalert2\sweetalert2.min.js"></script>
          <!-- Sparkline charts -->
          <script src="assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>
          <script src="assets/libs/jquery-knob/jquery.knob.min.js"></script>

          <!-- Chat js -->
          <script src="assets\js\pages\jquery.chat.js"></script>

          <!-- TODO js-->
          <script src="assets\js\pages\jquery.todo.js"></script>

          <!-- widgets init js-->
          <script src="assets\js\pages\widgets.init.js"></script>

          <!-- App js -->
          <script src="assets/js/app.min.js"></script>

        </body>

        </html>