package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "/UpdateProduct", urlPatterns = "/UpdateProduct")
public class UpdateProduct extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session =request.getSession();
        request.setCharacterEncoding ("UTF-8");
        response.setCharacterEncoding ("UTF-8");
        String sql = "Update product set name=?,imgURL=?,description=?,price=?,saleprice=?,company=?,tag=? where id=?";
        try {
            ConnectionDB.connect();

            PreparedStatement ps = ConnectionDB.con.prepareStatement(sql);

            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String imgURL = request.getParameter("image");
            String description = request.getParameter("description");
            int price = Integer.parseInt(request.getParameter("price"));
            int priceSale = Integer.parseInt(request.getParameter("pricesale"));
            String company = request.getParameter("company");
            String tag = request.getParameter("tag");


            ps.setString(1,name);
            ps.setString(2,imgURL);
            ps.setString(3,description);
            ps.setInt(4,price);
            ps.setInt(5,priceSale);
            ps.setString(6,company);
            ps.setString(7,tag);
            ps.setString(8,id);


            ps.executeUpdate();
            response.sendRedirect("PaginationProductAdmin");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}