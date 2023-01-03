package vn.edu.hcmuaf.fit.controller.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
/**
 * Hồ sơ , thông tin tài khoản
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-31
 */
@WebServlet(name = "/ExtrasProfile", urlPatterns = "/ExtrasProfile")
public class ExtrasProfile extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            session.getAttribute("useradmin");
            request.getRequestDispatcher("admin/taikhoanadmin.jsp").forward(request,response);
        } catch (NullPointerException e){
            response.sendRedirect("404.jsp");
        }
    }

}
