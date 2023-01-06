package vn.edu.hcmuaf.fit.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.edu.hcmuaf.fit.services.UserService;
import vn.edu.hcmuaf.fit.bean.UserBean;
/**
 * Login Admin
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-31
 */
@WebServlet("/admin/login")
public class AdminLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String emailaddress = request.getParameter("emailaddress");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserBean user = UserService.getInstance().loginAdmin(username, password,emailaddress);
        // check neu co role = 1 va tai khoan
        if(user == null || user.getUser_ID() != 1){
            request.getRequestDispatcher("/admin/dangnhap.jsp?message=error").forward(request, response);

        }
        if (user != null && user.getRole_ID() == 1) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            request.getRequestDispatcher("/admin/trangchu.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/admin/dangnhap.jsp?message=error").forward(request, response);
        }
    }
}
