<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 9/1/2023
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Daisan Admin | Đăng nhập</title>
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
                                <h3 class="text-primary mb-4 mt-3">ĐỔI MẬT KHẨU</h3>
                            </div>

                            <form action="/admin/changepassword" method="post" id="loginForm" onsubmit="return validateForm()">
                                <%
                                    String message = request.getParameter("message");
                                    if (message != null) {
                                %>
                                <div class="alert alert-danger" role="alert">
                                    Thành công
                                </div>
                                <%
                                    }
                                %>
                                <div class="form-group mb-3">
                                    <label for="password">Mật Khẩu</label>
                                    <input class="form-control" type="password" id="password" name="password" required
                                           placeholder="Nhập mật khẩu">
                                </div>

                                <div class="form-group mb-3">
                                    <label for="newPassword">Mật khẩu Mới</label>
                                    <input class="form-control" type="password" required id="newPassword" name="newPassword"
                                           placeholder="Nhập password">
                                </div>


                                <div class="form-group mb-0 text-center">
                                    <input class="btn btn-primary btn-block" type="submit" value="Xác nhận">
                                </div>

                            </form>

                      

                        </div> <!-- end card-body -->
                    </div>
                    <!-- end card -->

                    <div class="row mt-3">
                        <div class="col-12 text-center">
                            <p> <a href="quenmatkhau.jsp" class="text-muted ml-1">Quên mật khẩu ?</a></p>
                            <p class="text-muted">Bạn chưa có tài khoản ? <a href="dangky.jsp"
                                                                             class="text-primary font-weight-medium ml-1">Đăng ký</a></p>
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
        2022 &copy; Daisan by <a href="" class="text-muted">Group 17</a>
    </footer>

    <!-- Vendor js -->
    <script src="assets/js/vendor.min.js"></script>

    <!-- App js -->
    <script src="assets/js/app.min.js"></script>
    <script>
        function validateForm() {
            // Get the form element
            var form = document.getElementById("loginForm");

            // Get the email address field
            var email = form.elements["emailaddress"];
            // Check if the email address is empty
            if (email.value == "") {
                // If it's empty, display an error message and return false
                alert("Email address is required");
                email.focus();
                return false;
            }

            // Get the username field
            var username = form.elements["username"];
            // Check if the username is empty
            if (username.value == "") {
                // If it's empty, display an error message and return false
                alert("Username is required");
                username.focus();
                return false;
            }

            // Get the password field
            var password = form.elements["password"];
            // Check if the password is empty
            if (password.value == "") {
                // If it's empty, display an error message and return false
                alert("Password is required");
                password.focus();
                return false;
            }

            // If all the fields are filled out, submit the form
            return true;
        }

    </script>

    </body>

</html>
