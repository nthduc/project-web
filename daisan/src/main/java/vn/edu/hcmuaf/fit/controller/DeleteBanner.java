package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Xử lí phần xóa Banner
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-06
 */

@WebServlet(name = "/DeleteBanner", urlPatterns = "/DeleteBanner")
public class DeleteBanner extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String link = request.getParameter("link");

        try {
            ConnectionDB.connect();

            PreparedStatement ps = ConnectionDB.con.prepareStatement("delete from banner where imgURL= ?");
            ps.setString(1,link);
            ps.executeUpdate();
            response.sendRedirect("ManageBanner");

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

}
