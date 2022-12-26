package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "/AdminHome", urlPatterns = "/AdminHome")
public class AdminHome extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            ConnectionDB.connect();
            int total = 0;
            PreparedStatement ps = ConnectionDB.con.prepareStatement("select sum(totalprice) from orderdetail");

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                total = rs.getInt(1);
            }
            session.setAttribute("totalAdmin",total);
            session.getAttribute("useradmin");
            request.getRequestDispatcher("admin/trangchu.jsp").forward(request,response);

        } catch (NullPointerException e){
            response.sendRedirect("404.jsp");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}