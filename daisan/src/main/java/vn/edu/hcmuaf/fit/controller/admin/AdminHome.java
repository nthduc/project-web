package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * Home Admin
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-31
 */
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
            PreparedStatement ps = ConnectionDB.conn.prepareStatement("select sum(price) from order_details");

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