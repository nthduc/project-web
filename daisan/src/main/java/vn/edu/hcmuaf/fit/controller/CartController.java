package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.CartItemBean;
import vn.edu.hcmuaf.fit.bean.UserBean;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.SQLException;

@WebServlet(name = "/CartController", urlPatterns = "/CartController")
public class CartController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        String idRemove = request.getParameter("remove");
        UserBean user = null;
        try {
            user = (UserBean) session.getAttribute("user");


        } catch (NullPointerException e) {
            response.sendRedirect("dangnhap.jsp");
        }
        if (id != null) {

            try {
                CartItemBean cartItemBean = user.getCart();
                cartItemBean.add(id);
                cartItemBean.setQuantityTotal(cartItemBean.getList().size());
                session.setAttribute("cart",cartItemBean);
                request.getRequestDispatcher("giohang.jsp").forward(request,response);
//                response.sendRedirect("CartController");
            } catch (SQLException | ClassNotFoundException | NullPointerException e) {
                response.sendRedirect("dangnhap.jsp");
            }


        } else {
            try {
                CartItemBean cartItemBean = user.getCart();
                session.setAttribute("cart",cartItemBean);
                request.getRequestDispatcher("giohang.jsp").forward(request,response);
            } catch (NullPointerException e){
                response.sendRedirect("dangnhap.jsp");
            }
        }
        if (idRemove != null){
            try {
                CartItemBean cartItemBean = user.getCart();
                cartItemBean.remove(idRemove);
                session.setAttribute("cart",cartItemBean);
//                request.getRequestDispatcher("CartController").forward(request,response);
                response.sendRedirect("CartController");
            } catch (SQLException | ClassNotFoundException | NullPointerException e) {
                response.sendRedirect("dangnhap.jsp");
            }

        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
