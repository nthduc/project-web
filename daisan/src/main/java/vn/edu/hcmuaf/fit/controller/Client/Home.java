//package vn.edu.hcmuaf.fit.controller.Client;
//
//import vn.edu.hcmuaf.fit.bean.BannerBean;
//import vn.edu.hcmuaf.fit.bean.ProductBean;
//import vn.edu.hcmuaf.fit.db.ConnectionDB;
//import vn.edu.hcmuaf.fit.services.ProductService;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.WebServlet;
//import java.io.*;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
///**
// * Xử lí phần trang chủ
// *
// * @author Bui Anh Tuan
// * @version 1.0
// * @since 2022-12-31
// */
//@WebServlet(name = "Home", urlPatterns = "/Home")
//public class Home extends HttpServlet {
//
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        ProductService pro = new ProductService();
//        List<ProductBean> list = pro.getAllProduct();
//        request.setAttribute("listP",list);
//        List<ProductBean> listNew = pro.getAllProduct();
//        request.setAttribute("listN",listNew);
//        request.getRequestDispatcher("home.jsp").forward(request,response);
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//    public String getServletInfo() {
//        return "....";
//    }
//}
