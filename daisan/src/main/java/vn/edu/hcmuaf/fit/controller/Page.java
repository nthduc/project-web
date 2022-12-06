package vn.edu.hcmuaf.fit.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;

/**
 * Xử lí phân trang cho sản phẩm
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-06
 */

@WebServlet(name = "/Page", urlPatterns = "/Page")
public class Page extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page = Integer.parseInt(request.getParameter("pages"));

        request.setAttribute("pages", page);
        request.getRequestDispatcher("PaginationProduct").forward(request, response);
    }
}
