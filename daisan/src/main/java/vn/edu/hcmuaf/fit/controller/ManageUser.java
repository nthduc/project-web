package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.CartItemBean;
import vn.edu.hcmuaf.fit.bean.OrderBean;
import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.bean.WishListBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "/ManageUser", urlPatterns = "/ManageUser")
public class ManageUser extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        ArrayList<UserBean> list = new ArrayList<UserBean>();
        try {
            ConnectionDB.connect();

            PreparedStatement ps = ConnectionDB.con.prepareStatement("select * from user");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                WishListBean wishList = new WishListBean();
                CartItemBean cart = new CartItemBean(rs.getString(12));
                cart.setList(FindProduct.initCart(cart.getCartId()));
                OrderBean order = new OrderBean();
                //User user = new User(rs.getString(1),rs.getString(2),rs.getString(4),rs.getInt(5));
                UserBean user = new UserBean(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),
                        rs.getString(6),rs.getString(8),rs.getString(9), rs.getDate(7),
                        rs.getString(10),wishList,cart,order);
                list.add(user);
            }

            session.setAttribute("listUser",list);

            request.getRequestDispatcher("admin_baya/danhsachkhachhang.jsp").forward(request,response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}
