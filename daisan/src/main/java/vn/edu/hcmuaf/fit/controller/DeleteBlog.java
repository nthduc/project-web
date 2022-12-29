package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Xử lí phần xóa Blog
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-06
 */

@WebServlet(name = "/DeleteBlog", urlPatterns = "/DeleteBlog")
public class DeleteBlog extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String blodid = request.getParameter("blogid");

        try {
            ConnectionDB.connect();

            PreparedStatement ps = ConnectionDB.conn.prepareStatement("delete from blog where blogid= ?");
            ps.setString(1,blodid);
            ps.executeUpdate();
            response.sendRedirect("ManageBlog");

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


    }

}