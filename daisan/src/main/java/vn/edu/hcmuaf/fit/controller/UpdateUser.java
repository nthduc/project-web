package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "/UpdateUser", urlPatterns = "/UpdateUser")
public class UpdateUser extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding ("UTF-8");
        response.setCharacterEncoding ("UTF-8");

        String sql = "update user set name=?,phone=?,address=?,gender=?,dob=? where id=?";
        try {
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String gender = request.getParameter("gender");
            String dobString = request.getParameter("date");

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date dob = sdf.parse(dobString);


            HttpSession session = request.getSession();
            UserBean user = (UserBean) session.getAttribute("user");
            ConnectionDB.connect();

            PreparedStatement ps = ConnectionDB.con.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,phone);
            ps.setString(3,address);
            ps.setString(4,gender);
            ps.setDate(5, new java.sql.Date(dob.getTime()));
            ps.setString(6,user.getId());

            ps.executeUpdate();
            request.getRequestDispatcher("taikhoancuatoi.jsp").forward(request,response);

        } catch (ClassNotFoundException |SQLException | ParseException e) {
            e.printStackTrace();
        }
    }

}