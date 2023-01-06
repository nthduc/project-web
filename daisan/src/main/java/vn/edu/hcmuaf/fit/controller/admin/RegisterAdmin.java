package vn.edu.hcmuaf.fit.controller.admin;
import vn.edu.hcmuaf.fit.services.UserService;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Đăng kí tài khoản admin
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-31
 */
@WebServlet(name = "RegisterAdmin", urlPatterns = "/registeradmin")
public class RegisterAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the form parameters
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("emailaddress");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        String username = request.getParameter("username");

        // Insert the new user into the database
        UserService userService = UserService.getInstance();
        int affectedRows = userService.themtaikhoanadmin(Integer.parseInt(role), username, email, password, fullname);

        if (affectedRows > 0) {
            // Insert was successful, redirect to login page
            response.sendRedirect("admin/dangnhap.jsp");
        } else {
            // Insert was unsuccessful, redirect back to current page
            response.sendRedirect("admin/dangky.jsp");
        }
    }
}
