package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.InfoBean;
import vn.edu.hcmuaf.fit.bean.OrderBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "/ManageOrder", urlPatterns = "/ManageOrder")
public class ManageOrder extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<OrderBean> list = new ArrayList<>();
        HttpSession session = request.getSession();

        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.con.prepareStatement("select * from `order`");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                int totalprice = 0;
                PreparedStatement ps2 = ConnectionDB.con.prepareStatement("SELECT SUM(totalprice) FROM `orderdetail` WHERE orderid = ?");
                ps2.setString(1,rs.getString(2));
                ResultSet rs2 = ps2.executeQuery();
                while (rs2.next()){
                    totalprice = rs2.getInt(1);
                }


                OrderBean order = new OrderBean(rs.getString(2),new InfoBean(null,null,null,rs.getString(5)),rs.getInt(6),totalprice);
                order.setEmail(rs.getString(1));
                order.setReceptDate(rs.getDate(3));
                order.setDeliveryDate(rs.getDate(4));
                list.add(order);
            }

            session.setAttribute("listorder",list);
            request.getRequestDispatcher("admin/danhsachdonhang.jsp").forward(request,response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }

}