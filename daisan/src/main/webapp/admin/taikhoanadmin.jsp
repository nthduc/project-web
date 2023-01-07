<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 8/12/2022
  Time: 7:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Daisan Admin | Tài Khoản</title>
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
        <c:choose>
        <c:when test="${sessionScope.user != null}">
        <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown"
           href="taikhoanadmin.jsp" role="button" aria-haspopup="false" aria-expanded="false">
          <img src="assets\images\users\duc.jpg" alt="user-image" class="rounded-circle">
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
                        <img src="assets\images\logo-white.png" alt="" height="35">
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
                  <li class="breadcrumb-item"><a href="trangchu.jsp">Admin</a></li>

                  <li class="breadcrumb-item active">Tài khoản</li>
                </ol>
              </div>
              <h4 class="page-title">TÀI KHOẢN</h4>
            </div>
          </div>
        </div>
        <!-- end page title -->

        <div class="row">
          <div class="col-lg-4 col-xl-4">
            <div class="card-box text-center">
              <img src="assets/images/users/duc.jpg" class="rounded-circle avatar-xl img-thumbnail"
                   alt="profile-image">

              <h4 class="mb-0">Nguyễn Thái Đức</h4>
              <p class="text-muted">@webdesigner</p>

              <button type="button" class="btn btn-success btn-xs waves-effect mb-2 waves-light">Theo
                dõi</button>
              <button type="button" class="btn btn-danger btn-xs waves-effect mb-2 waves-light">Nhắn
                tin</button>

              <div class="text-left mt-3">
                <h4 class="font-13 text-uppercase">Giới thiệu :</h4>
                <p class="text-muted font-13 mb-3">
                  Chào mình là ${sessionScope.useradmin.username} ^_^
                </p>
                <p class="text-muted mb-2 font-13"><strong>Họ tên :</strong> <span
                        class="ml-2">${sessionScope.useradmin.fullname}</span></p>

                <p class="text-muted mb-2 font-13"><strong>Số điện thoại :</strong><span
                        class="ml-2">${sessionScope.useradmin.phone}</span></p>

                <p class="text-muted mb-2 font-13"><strong>Email :</strong> <span
                        class="ml-2 ">${sessionScope.useradmin.email}</span></p>

                <p class="text-muted mb-1 font-13"><strong>Địa chỉ :</strong> <span
                        class="ml-2">${sessionScope.useradmin.address}</span></p>
              </div>

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
                  <a href="javascript: void(0);" class="social-list-item border-info text-info"><i
                          class="mdi mdi-twitter"></i></a>
                </li>
                <li class="list-inline-item">
                  <a href="javascript: void(0);"
                     class="social-list-item border-secondary text-secondary"><i
                          class="mdi mdi-github-circle"></i></a>
                </li>
              </ul>
            </div> <!-- end card-box -->

            <div class="card-box">
              <h4 class="header-title">Kĩ năng</h4>
              <!-- <p class="mb-3">Everyone realizes why a new common language would be desirable</p> -->

              <div class="pt-1">
                <h6 class="text-uppercase mt-0">HTML5 <span class=" float-right">90%</span></h6>
                <div class="progress progress-sm m-0">
                  <div class="progress-bar bg-purple" role="progressbar" aria-valuenow="90"
                       aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                    <span class="sr-only">90% Complete</span>
                  </div>
                </div>
              </div>

              <div class="mt-2 pt-1">
                <h6 class="text-uppercase">PHP <span class="float-right">67%</span></h6>
                <div class="progress progress-sm m-0">
                  <div class="progress-bar bg-purple" role="progressbar" aria-valuenow="67"
                       aria-valuemin="0" aria-valuemax="100" style="width: 67%">
                    <span class="sr-only">67% Complete</span>
                  </div>
                </div>
              </div>

              <div class="mt-2 pt-1">
                <h6 class="text-uppercase">WordPress <span class="float-right">48%</span></h6>
                <div class="progress progress-sm m-0">
                  <div class="progress-bar bg-purple" role="progressbar" aria-valuenow="48"
                       aria-valuemin="0" aria-valuemax="100" style="width: 48%">
                    <span class="sr-only">48% Complete</span>
                  </div>
                </div>
              </div>

              <div class="mt-2 pt-1">
                <h6 class="text-uppercase">Laravel <span class="float-right">95%</span></h6>
                <div class="progress progress-sm m-0">
                  <div class="progress-bar bg-purple" role="progressbar" aria-valuenow="95"
                       aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                    <span class="sr-only">95% Complete</span>
                  </div>
                </div>
              </div>

              <div class="mt-2 pt-1">
                <h6 class="text-uppercase">ReactJs <span class="float-right">72%</span></h6>
                <div class="progress progress-sm m-0">
                  <div class="progress-bar bg-purple" role="progressbar" aria-valuenow="72"
                       aria-valuemin="0" aria-valuemax="100" style="width: 72%">
                    <span class="sr-only">72% Complete</span>
                  </div>
                </div>
              </div>

            </div> <!-- end card-box-->

          </div> <!-- end col-->

          <div class="col-lg-8 col-xl-8">
            <div class="card-box">
              <ul class="nav nav-pills navtab-bg">
                <li class="nav-item">
                  <a href="#about-me" data-toggle="tab" aria-expanded="true"
                     class="nav-link active ml-0">
                    <i class="mdi mdi-face-profile mr-1"></i>Về bản thân
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#settings" data-toggle="tab" aria-expanded="false" class="nav-link">
                    <i class="mdi mdi-settings-outline mr-1"></i>Cài đặt
                  </a>
                </li>
              </ul>

              <div class="tab-content">

                <div class="tab-pane show active" id="about-me">

                  <h5 class="mb-4 text-uppercase"><i class="mdi mdi-briefcase mr-1"></i>
                    Kinh nghiệm</h5>

                  <ul class="list-unstyled timeline-sm">
                    <li class="timeline-sm-item">
                      <span class="timeline-sm-date">2020 - 21</span>
                      <h5 class="mt-0 mb-1">Lead designer / Developer</h5>
                      <!-- <p>websitename.com</p> -->
                      <p class="text-muted mt-2">Mọi người đều nhận ra lý do tại sao một ngôn
                        ngữ chung mới lại được mong muốn: người ta có thể từ chối trả cho
                        những người dịch thuật đắt tiền. Để đạt được điều này, cần phải có
                        ngữ pháp, cách phát âm thống nhất và các từ thông dụng hơn.</p>

                    </li>
                    <li class="timeline-sm-item">
                      <span class="timeline-sm-date">2019 - 20</span>
                      <h5 class="mt-0 mb-1">Senior Graphic Designer</h5>
                      <!-- <p>Software Inc.</p> -->
                      <p class="text-muted mt-2">Nếu một số ngôn ngữ kết hợp với nhau, ngữ
                        pháp của ngôn ngữ kết quả sẽ đơn giản và thông thường hơn so với các
                        ngôn ngữ riêng lẻ. Ngôn ngữ chung mới sẽ đơn giản và thông thường
                        hơn các ngôn ngữ Châu Âu hiện có.</p>
                    </li>
                    <li class="timeline-sm-item">
                      <span class="timeline-sm-date">2018 - 19</span>
                      <h5 class="mt-0 mb-1">Graphic Designer</h5>
                      <!-- <p>Coderthemes LLP</p> -->
                      <p class="text-muted mt-2 mb-0">Các ngôn ngữ châu Âu là thành viên của
                        cùng một gia đình. Sự tồn tại riêng biệt của họ là một huyền thoại.
                        Đối với môn thể thao âm nhạc khoa học, v.v., Châu Âu sử dụng cùng
                        một từ vựng. Các ngôn ngữ chỉ khác nhau về ngữ pháp cách phát âm của
                        chúng.</p>
                    </li>
                  </ul>



                </div>
                <!-- end timeline content-->

                <div class="tab-pane" id="settings">
                  <form>
                    <h5 class="mb-3 text-uppercase bg-light p-2"><i
                            class="mdi mdi-account-circle mr-1"></i> Thông tin cá nhân</h5>

                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="firstname">Tên</label>
                          <input type="text" class="form-control" id="firstname"
                                 placeholder="Nhập tên">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="lastname">Nhập họ</label>
                          <input type="text" class="form-control" id="lastname"
                                 placeholder="Nhập họ">
                        </div>
                      </div> <!-- end col -->
                    </div> <!-- end row -->

                    <div class="row">
                      <div class="col-12">
                        <div class="form-group">
                          <label for="userbio">Giới thiệu bản thân</label>
                          <textarea class="form-control" id="userbio" rows="4"
                                    placeholder="Viết gì đó..."></textarea>
                        </div>
                      </div> <!-- end col -->
                    </div> <!-- end row -->

                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="useremail">Email Address</label>
                          <input type="email" class="form-control" id="useremail"
                                 placeholder="Nhập email">
                          <span class="form-text text-muted"><small>Nếu bạn muốn đổi email
                                                                <a href="javascript: void(0);">click</a> tại
                                                                đây.</small></span>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="userpassword">Password</label>
                          <input type="password" class="form-control" id="userpassword"
                                 placeholder="Nhập password">
                          <span class="form-text text-muted"><small>Nếu bạn muốn đổi
                                                                passwword <a href="javascript: void(0);">click</a> tại
                                                                đây.</small></span>
                        </div>
                      </div> <!-- end col -->
                    </div> <!-- end row -->

                    <h5 class="mb-3 text-uppercase bg-light p-2"><i
                            class="mdi mdi-office-building mr-1"></i> Tên Công ty</h5>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="companyname">Tên công ty</label>
                          <input type="text" class="form-control" id="companyname"
                                 placeholder="Nhập tên cty">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="cwebsite">Website</label>
                          <input type="text" class="form-control" id="cwebsite"
                                 placeholder="Nhập website url">
                        </div>
                      </div> <!-- end col -->
                    </div> <!-- end row -->

                    <h5 class="mb-3 text-uppercase bg-light p-2"><i
                            class="mdi mdi-earth mr-1"></i>Mạng xã hội</h5>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="social-fb">Facebook</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><i
                                                                        class="fab fa-facebook-square"></i></span>
                            </div>
                            <input type="text" class="form-control" id="social-fb"
                                   placeholder="Url">
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="social-tw">Twitter</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><i
                                                                        class="fab fa-twitter"></i></span>
                            </div>
                            <input type="text" class="form-control" id="social-tw"
                                   placeholder="Username">
                          </div>
                        </div>
                      </div> <!-- end col -->
                    </div> <!-- end row -->

                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="social-insta">Instagram</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><i
                                                                        class="fab fa-instagram"></i></span>
                            </div>
                            <input type="text" class="form-control" id="social-insta"
                                   placeholder="Url">
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="social-lin">Linkedin</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><i
                                                                        class="fab fa-linkedin"></i></span>
                            </div>
                            <input type="text" class="form-control" id="social-lin"
                                   placeholder="Url">
                          </div>
                        </div>
                      </div> <!-- end col -->
                    </div> <!-- end row -->

                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="social-sky">Skype</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><i
                                                                        class="fab fa-skype"></i></span>
                            </div>
                            <input type="text" class="form-control" id="social-sky"
                                   placeholder="@username">
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="social-gh">Github</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><i
                                                                        class="fab fa-github"></i></span>
                            </div>
                            <input type="text" class="form-control" id="social-gh"
                                   placeholder="Username">
                          </div>
                        </div>
                      </div> <!-- end col -->
                    </div> <!-- end row -->

                    <div class="text-right">
                      <button type="submit"
                              class="btn btn-success waves-effect waves-light mt-2"><i
                              class="mdi mdi-content-save"></i> Lưu</button>
                    </div>
                  </form>
                </div>
                <!-- end settings content-->

              </div> <!-- end tab-content -->
            </div> <!-- end card-box-->

          </div> <!-- end col -->
        </div>
        <!-- end row-->

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
<!-- /Right-bar -->

<!-- Right bar overlay-->
<div class="rightbar-overlay"></div>

<!-- Vendor js -->
<script src="assets/js/vendor.min.js"></script>

<!-- App js -->
<script src="assets/js/app.min.js"></script>

</body>

</html>
