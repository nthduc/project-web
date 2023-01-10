package vn.edu.hcmuaf.fit.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.services.UserService;

/**

 Servlet implementation class ChangePasswordAdmin
 */
@WebServlet("/admin/changepassword")
public class ChangePasswordAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserBean user = (UserBean) session.getAttribute("user");

        String password = request.getParameter("password");
        String newPassword = request.getParameter("newPassword");

        UserService userService = UserService.getInstance();
        boolean result = userService.changePassword(user.getUsername(), password, newPassword);

        if (result) {
            session.setAttribute("message", "Đổi mật khẩu thành công");
            response.sendRedirect(request.getContextPath() + "/admin/dangnhap.jsp");
        } else {
            session.setAttribute("message", "Đổi mật khẩu thất bại. Vui lòng kiểm tra lại thông tin");
            response.sendRedirect(request.getContextPath() + "/admin/doimatkhau.jsp");
        }
    }
}