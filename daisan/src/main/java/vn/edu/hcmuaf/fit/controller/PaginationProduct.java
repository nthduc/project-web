package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.ProductBean;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "/PaginationProduct", urlPatterns = "/PaginationProduct")
public class PaginationProduct extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            HttpSession session = request.getSession();
//            int a = Integer.parseInt(request.getParameter("a"));
//            System.out.println("a = " + a);
            int page = (int) session.getAttribute("pages1");
            int maxitem = (int) session.getAttribute("maxitem1");

            String category = (String) session.getAttribute("category1");
            System.out.println("cate: " + category);
            String sql = (String) session.getAttribute("sql");
//            String sql = "SELECT * FROM product WHERE id LIKE CONCAT(?,'%') LIMIT ?,?";
            System.out.println(page);

            session.setAttribute("maxPage",Pagination.getPage(sql,category,maxitem,page));
            ArrayList<ProductBean> listProducts = Pagination.pagination(sql,category,maxitem,page);

            request.setAttribute("listProducts",listProducts);

            request.getRequestDispatcher("gachoplat.jsp").forward(request,response);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

}
