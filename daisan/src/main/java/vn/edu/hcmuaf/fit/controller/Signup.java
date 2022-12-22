package vn.edu.hcmuaf.fit.controller;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;

/**
 * Xử lí phần đăng kí tài khoản
 *
 * @author Bui Anh Tuan
 * @version 1.0
 * @since 2022-12-21
 */

@WebServlet(name = "/Signup", urlPatterns = "/Signup")
public class Signup extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("dangky.jsp").forward(request,response);
    }



}

