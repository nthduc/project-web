<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 8/12/2022
  Time: 7:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Daisan | Thêm sản phẩm
  </title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
  <meta content="Coderthemes" name="author">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- App favicon -->
  <link rel="shortcut icon" href="assets/images/favicon.ico">

  <!-- Plugins css -->
  <link href="assets\libs\quill\quill.core.css" rel="stylesheet" type="text/css">
  <link href="assets\libs\quill\quill.bubble.css" rel="stylesheet" type="text/css">
  <link href="assets\libs\quill\quill.snow.css" rel="stylesheet" type="text/css">

  <!-- App css -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css">
  <link href="assets/css/app.min.css" rel="stylesheet" type="text/css">
  <link href="assets\libs\dropzone\dropzone.min.css" rel="stylesheet" type="text/css">
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
                  <li class="breadcrumb-item"><a href="javascript: void(0);">Admin</a></li>
                  <li class="breadcrumb-item"><a href="javascript: void(0);">Sản phẩm</a></li>
                  <li class="breadcrumb-item active">Thêm sản phẩm</li>
                </ol>
              </div>
              <h4 class="page-title">THÊM SẢN PHẨM</h4>
            </div>
          </div>
        </div>
        <!-- end page title -->
        <div class="row">

          <div class="col-lg-12">

            <div class="card">
              <div class="card-body">



                <form>
                  <div id="progressbarwizard">

                    <ul class="nav nav-pills nav-justified form-wizard-header mb-3">
                      <li class="nav-item">
                        <a href="#account-2" data-toggle="tab" class="nav-link">
                          <span class="number">1.</span>
                          <span class="d-none d-sm-inline">Chung</span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a href="#profile-tab-2" data-toggle="tab" class="nav-link">
                          <span class="number">2.</span>
                          <span class="d-none d-sm-inline">Hình Ảnh Sản Phẩm</span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a href="#finish-2" data-toggle="tab" class="nav-link active">
                          <span class="number">3.</span>
                          <span class="d-none d-sm-inline">Kết Thúc</span>
                        </a>
                      </li>
                    </ul>

                    <div class="tab-content b-0 mb-0">

                      <div id="bar" class="progress mb-3" style="height: 7px;">
                        <div class="bar progress-bar progress-bar-striped progress-bar-animated bg-success"
                             style="width: 100%;"></div>
                      </div>

                      <div class="tab-pane" id="account-2">
                        <div class="row">
                          <div class="col-12">
                            <h4 class="header-title">Thông tin chung</h4>
                            <p class="sub-header">Điền tất cả thông tin bên dưới</p>
                            <div>

                              <div class="row">
                                <div class="col-lg-6">
                                  <div class="form-group mb-3">
                                    <label for="product-name">Tên sản phẩm <span
                                            class="text-danger">*</span></label>
                                    <input type="text" id="product-name"
                                           class="form-control"
                                           placeholder="e.g : Apple iMac">
                                  </div>
                                </div>

                              </div>
                              <div class="form-group mb-3">
                                <label for="product-description">Mô tả Sản phẩm
                                  <span class="text-danger">*</span></label>



                                <div id="snow-editor" style="height: 300px;">


                                </div> <!-- end Snow-editor-->

                              </div>


                              <div class="row">
                                <div class="col-lg-6">
                                  <div class="form-group mb-3">
                                    <label for="product-summary">
                                      Sản Phẩm chính</label>
                                    <textarea class="form-control"
                                              id="product-summary" rows="5"
                                              placeholder="Vui lòng nhập"></textarea>
                                  </div>
                                </div>
                                <div class="col-lg-6">
                                  <div class="form-group mb-3">
                                    <label for="product-category">Danh mục
                                      <span
                                              class="text-danger">*</span></label>
                                    <select
                                            class="form-control select2 select2-hidden-accessible"
                                            id="product-category"
                                            data-select2-id="product-category"
                                            tabindex="-1" aria-hidden="true">

                                      <optgroup label="Shopping">
                                        <option value="SH1">Mua sắm 1
                                        </option>
                                        <option value="SH2">Mua sắm 2
                                        </option>
                                        <option value="SH3">Mua sắm 3
                                        </option>
                                        <option value="SH4">Mua sắm 4
                                        </option>
                                      </optgroup>
                                      <optgroup label="CRM">
                                        <option value="CRM1">Crm 1</option>
                                        <option value="CRM2">Crm 2</option>
                                        <option value="CRM3">Crm 3</option>
                                        <option value="CRM4">Crm 4</option>
                                      </optgroup>
                                      <optgroup label="eCommerce">
                                        <option value="E1">eCommerce 1
                                        </option>
                                        <option value="E2">eCommerce 2
                                        </option>
                                        <option value="E3">eCommerce 3
                                        </option>
                                        <option value="E4">eCommerce 4
                                        </option>
                                      </optgroup>

                                    </select>
                                  </div>
                                  <div class="form-group mb-3">
                                    <label for="product-price">Giá <span
                                            class="text-danger">*</span></label>
                                    <input type="text" class="form-control"
                                           id="product-price"
                                           placeholder="Vui lòng nhập giá">
                                  </div>
                                </div>
                              </div>

                              <div class="form-group mb-3">
                                <label class="mb-2">Trạng Thái <span
                                        class="text-danger">*</span></label>
                                <br>
                                <div class="radio form-check-inline">
                                  <input type="radio" id="inlineRadio1"
                                         value="option1" name="radioInline"
                                         checked="">
                                  <label for="inlineRadio1"> Online </label>
                                </div>
                                <div class="radio form-check-inline">
                                  <input type="radio" id="inlineRadio2"
                                         value="option2" name="radioInline">
                                  <label for="inlineRadio2"> Offline </label>
                                </div>
                                <div class="radio form-check-inline">
                                  <input type="radio" id="inlineRadio3"
                                         value="option3" name="radioInline">
                                  <label for="inlineRadio3"> Draft </label>
                                </div>
                              </div>

                              <div class="form-group mb-0">
                                <label>Bình Luận</label>
                                <textarea class="form-control" rows="3"
                                          placeholder="Vui lòng nhập bình luận"></textarea>
                              </div>


                            </div>
                          </div> <!-- end col -->
                        </div> <!-- end row -->
                      </div>

                      <div class="tab-pane" id="profile-tab-2">
                        <div class="container-fluid">

                          <div class="row">
                            <div class="col-12">
                              <div class="card">
                                <div class="card-body">
                                  <h4 class="header-title m-t-0">Hình ảnh sản phẩm
                                  </h4>
                                  <p class="text-muted font-13 m-b-30">
                                    Tải lên hình ảnh sản phẩm
                                  </p>

                                  <form action="/" method="post" class="dropzone"
                                        id="myAwesomeDropzone"
                                        data-plugin="dropzone"
                                        data-previews-container="#file-previews"
                                        data-upload-preview-template="#uploadPreviewTemplate">
                                    <div class="fallback">
                                      <input name="file" type="file"
                                             multiple="">
                                    </div>

                                    <div class="dz-message needsclick">
                                      <p class="h1 text-muted"><i
                                              class="mdi mdi-cloud-upload"></i>
                                      </p>
                                      <h3>Thả tệp vào đây hoặc nhấp để tải
                                        lên.
                                      </h3>
                                      <span class="text-muted font-13">(Đây
                                                                                    chỉ là một dropzone demo. Đã chọn
                                                                                    các tập tin là
                                                                                    <strong>not</strong> thực ra
                                                                                    đã tải lên.)</span>
                                    </div>
                                  </form>

                                  <!-- Preview -->
                                  <div class="dropzone-previews mt-3"
                                       id="file-previews"></div>
                                </div>
                                <!-- end card-body -->
                              </div>
                              <!-- end card-->
                            </div>
                            <!-- end col-->
                          </div>
                          <!-- end row -->



                        </div> <!-- container -->
                      </div>

                      <div class="tab-pane active" id="finish-2">
                        <div class="row">
                          <div class="col-12">
                            <div class="text-center">
                              <h2 class="mt-0"><i class="mdi mdi-check-all"></i></h2>
                              <h3 class="mt-0">Completed !</h3>

                              <p class="w-75 mb-2 mx-auto">Sản phẩm sẽ có sẵn
                                sớm có trong cửa hàng.</p>


                            </div>
                          </div> <!-- end col -->
                        </div> <!-- end row -->
                      </div>

                      <ul class="list-inline mb-0 wizard" style="margin-top: 1rem;">
                        <li class="previous list-inline-item">
                          <a href="javascript: void(0);"
                             class="btn btn-secondary">Trước</a>
                        </li>
                        <li class="next list-inline-item float-right disabled">
                          <a href="javascript: void(0);" class="btn btn-primary">Sau</a>
                        </li>
                      </ul>

                    </div> <!-- tab-content -->
                  </div> <!-- end #progressbarwizard-->
                </form>

              </div> <!-- end card-body -->
            </div>


          </div>
        </div> <!-- end col -->


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
        <img src="assets\images\users\avatar-1.jpg" alt="user-img" title="Mat Helme"
             class="rounded-circle img-fluid">
        <a href="javascript:void(0);" class="user-edit"><i class="mdi mdi-pencil"></i></a>
      </div>

      <h5><a href="javascript: void(0);">Nik G. Patel</a> </h5>
      <p class="text-muted mb-0"><small>Admin Head</small></p>
    </div>

    <ul class="nav nav-pills bg-light nav-justified">
      <li class="nav-item">
        <a href="#home1" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0">
          Chung
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
            <h5 class="m-0 font-15">Thông báo</h5>
            <p class="text-muted"><small>Bạn có cần chúng không?</small></p>
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

<!-- Plugins js -->
<script src="assets\libs\katex\katex.min.js"></script>
<script src="assets\libs\quill\quill.min.js"></script>

<!-- Init js-->
<script src="assets\js\pages\form-quilljs.init.js"></script>

<!-- App js -->
<script src="assets/js/app.min.js"></script>
<!-- Right bar overlay-->
<div class="rightbar-overlay"></div>

<!-- Vendor js -->
<script src="assets/js/vendor.min.js"></script>

<!-- Plugins js-->
<script src="assets\libs\twitter-bootstrap-wizard\jquery.bootstrap.wizard.min.js"></script>

<!-- Init js-->
<script src="assets\js\pages\form-wizard.init.js"></script>
<!-- Plugins js -->
<script src="assets\libs\dropzone\dropzone.min.js"></script>

<!-- Init js-->
<script src="assets\js\pages\form-fileuploads.init.js"></script>
<!-- App js -->
<script src="assets/js/app.min.js"></script>
</body>

</html>
