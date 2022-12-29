package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Xử lí phần xóa Đơn hàng
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-06
 */

@WebServlet(name = "/DeleteOrder", urlPatterns = "/DeleteOrder")
public class DeleteOrder extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orderid = request.getParameter("orderid");

        try {
            ConnectionDB.connect();

            PreparedStatement ps = ConnectionDB.conn.prepareStatement("delete from `order` where orderid= ?");
            ps.setString(1,orderid);
            ps.executeUpdate();

            PreparedStatement ps1 = ConnectionDB.conn.prepareStatement("delete from `orderdetail` where orderid= ?");
            ps1.setString(1,orderid);
            ps1.executeUpdate();

            response.sendRedirect("ManageOrder");

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

}
