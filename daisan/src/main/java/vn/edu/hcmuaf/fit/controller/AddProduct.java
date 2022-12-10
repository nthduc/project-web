package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Xử lí phần thêm Sản phẩm
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-10
 */

@WebServlet(name = "/AddProduct", urlPatterns = "/AddProduct")
public class AddProduct extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding ("UTF-8");
        response.setCharacterEncoding ("UTF-8");
        HttpSession session = request.getSession();
        String sql = "insert into product (id,name,imgURL,price,saleprice,description) values (?,?,?,?,?,?)";


        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.con.prepareStatement(sql);
            PreparedStatement ps1;

            String head = request.getParameter("keyid");
            if (head.equals("pt")){
                ps1 = ConnectionDB.con.prepareStatement("SELECT * FROM product WHERE id LIKE CONCAT(?,'%') AND !(id LIKE 'pte%') ORDER BY id DESC LIMIT 1 ");
                ps1.setString(1,head);
            } else {
                ps1 = ConnectionDB.con.prepareStatement("SELECT * FROM product WHERE id LIKE CONCAT(?,'%') ORDER BY id DESC LIMIT 1 ");
                ps1.setString(1,head);
            }


            ResultSet rs1 = ps1.executeQuery();
            while (rs1.next()){
                String id = rs1.getString(1);
                System.out.println(id.substring(id.length()-2,id.length()));
                int b = Integer.parseInt(id.substring(id.length()-2,id.length()))+1;
                id = id.substring(0,id.length()-2)+b;
                System.out.println(b);
                ps.setString(1,id);
            }

            String link = "";
            System.out.println("http://localhost:8080/daisan/assets/images/products/" + link);
            link += "http://localhost:8080/daisan/assets/images/products/" + request.getParameter("file");
            //ps.setString(1,id);//plv
            ps.setString(2, request.getParameter("name"));
            ps.setString(3, link);
            ps.setInt(4, Integer.parseInt(request.getParameter("price")));
            ps.setInt(5, Integer.parseInt(request.getParameter("saleprice")));
            ps.setString(6, request.getParameter("description"));
//            ps.setInt(7, Integer.parseInt("quantity"));

            ps.executeUpdate();
            response.sendRedirect("AddProductAdmin");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();


        }
    }
}



