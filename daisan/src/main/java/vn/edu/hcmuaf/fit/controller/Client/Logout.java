package vn.edu.hcmuaf.fit.controller.Client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;

/**
 * Xử lí phần đăng xuất
 *
 * @author Bùi Anh Tuấn
 * @version 1.0
 * @since 2022-12-11
 */

@WebServlet(name = "/Logout", urlPatterns = "/Logout")
public class Logout extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("acc");
        response.sendRedirect("Home");
    }


    public String getServletInfo() {
        return "....";
    }
}