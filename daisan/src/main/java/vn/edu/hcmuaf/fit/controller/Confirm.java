package vn.edu.hcmuaf.fit.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;

/**
 * Xử lí phần xác nhận
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-06
 */

@WebServlet(name = "/Confirm", urlPatterns = "/Confirm")
public class Confirm extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        request.getRequestDispatcher("xacnhandonhang.jsp").forward(request,response);
    }

}
