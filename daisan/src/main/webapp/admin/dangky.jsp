<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 8/12/2022
  Time: 7:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Daisan Admin | Đăng ký</title>
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

<div class="account-pages mt-5 mb-5">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-8 col-lg-6 col-xl-5">
        <div class="card">

          <div class="card-body p-4">

            <div class="text-center w-75 m-auto">
              <a href="trangchu.jsp">
                <span><img src="assets/images/daisan.png" alt="" height="22"></span>
              </a>
              <h3 class="text-primary mb-4 mt-3">ĐĂNG KÝ TÀI KHOẢN</h3>
            </div>

            <form action="/registeradmin" method="post">

              <div class="form-group">
                <input type="hidden" name="role" id="role" value="1">
                <label for="fullname">Họ tên</label>
                <input class="form-control" type="text" id="fullname" name="fullname" placeholder="Nhập họ tên"
                       required>
              </div>
              <div class="form-group">
                <label for="fullname">Tài khoản</label>
                <input class="form-control" type="text" id="username" name="username" placeholder="Nhập tên tài khoản"
                       required>
              </div>
              <div class="form-group">
                <label for="emailaddress">Email</label>
                <input class="form-control" type="email" id="emailaddress" name="emailaddress" required
                       placeholder="Nhập email">
              </div>
              <div class="form-group">
                <label for="password">Mật khẩu</label>
                <input class="form-control" type="password" required="" id="password" name="password"
                       placeholder="Nhập password">
              </div>
              <div class="form-group">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" id="checkbox-signup">
                  <label class="custom-control-label" for="checkbox-signup">Tôi đồng ý với <a
                          href="javascript: void(0);" class="text-dark">Các Điều Khoản Dịch
                    Vụ</a></label>
                </div>
              </div>
              <div class="form-group mb-0 text-center">
                <input class="btn btn-primary btn-block" type="submit" value="Đăng ký">
              </div>

            </form>

            <div class="text-center">
              <h5 class="mt-3 text-muted">Đăng ký bằng</h5>
              <ul class="social-list list-inline mt-3 mb-0">
                <li class="list-inline-item">
                  <a href="javascript: void(0);"
                     class="social-list-item border-primary text-primary"><i
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
            </div>

          </div> <!-- end card-body -->
        </div>
        <!-- end card -->

        <div class="row mt-3">
          <div class="col-12 text-center">
            <p class="text-muted">Bạn đã có tài khoản ? <a href="dangnhap.jsp"
                                                           class="text-muted font-weight-medium ml-1">Đăng nhập</a></p>
          </div> <!-- end col -->
        </div>
        <!-- end row -->

      </div> <!-- end col -->
    </div>
    <!-- end row -->
  </div>
  <!-- end container -->
</div>
<!-- end page -->


<footer class="footer footer-alt">
  2022 &copy;Daisan by <a href="" class="text-muted">Group 17</a>
</footer>

<!-- Vendor js -->
<script src="assets/js/vendor.min.js"></script>

<!-- App js -->
<script src="assets/js/app.min.js"></script>

</body>

</html>
