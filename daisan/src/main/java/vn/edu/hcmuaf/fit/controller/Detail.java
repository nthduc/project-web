package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Handle logic Detail
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-06
 */
@WebServlet(name = "/Detail", urlPatterns = "/Detail")
public class Detail extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String productID = request.getParameter("id");

        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement("select * from product where id=?");
            ps.setString(1,productID);
            ResultSet rs = ps.executeQuery();
            ProductBean product1;

            while (rs.next()){
                product1 = new ProductBean(rs.getString(1),rs.getString(2),rs.getString(3)
                        ,rs.getInt(4),rs.getInt(5),rs.getString(6),rs.getInt(7)
                        ,rs.getString(8),rs.getString(9));
                session.setAttribute("product", product1);
            }



            request.getRequestDispatcher("detail.jsp").forward(request,response);
        } catch (SQLException | ClassNotFoundException e) {

        }
    }


    public String getServletInfo() {
        return "....";
    }
}