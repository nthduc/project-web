package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.db.ConnectionDB;
import vn.edu.hcmuaf.fit.helper.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "/UpdatePassword", urlPatterns = "/UpdatePassword")
public class UpdatePassword extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        try {
            ConnectionDB.connect();

            String oldPassword = request.getParameter("oldpassword");
            String newPassword = request.getParameter("newpassword");
            String retypePassword = request.getParameter("retypepassword");
            String userid = request.getParameter("id");

            PreparedStatement ps1 = ConnectionDB.con.prepareStatement("select password from user where id = ?");
            ps1.setString(1,userid);
            ResultSet rs1 = ps1.executeQuery();
            if (rs1.next()){
                BCrypt bCrypt = new BCrypt();
                if (bCrypt.checkpw(oldPassword,rs1.getString(1))){
                    if (newPassword.equals(retypePassword)){
                        PreparedStatement ps2 = ConnectionDB.con.prepareStatement("update user set password = ? where id = ?");
                        ps2.setString(1,bCrypt.hashpw(newPassword,bCrypt.gensalt()));
                        ps2.setString(2,userid);

                        ps2.executeUpdate();
                    } else {

                    }
                };
            }
            response.sendRedirect("taikhoancuatoi.jsp");

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


    }

}
