package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.bean.CartItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ShowCart" ,urlPatterns = "/ShowCart")
public class ShowCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<CartItem> cart = null;
//        HttpSession session = request.getSession();
//        if (session.getAttribute("Cart")== null){
//            cart = new ArrayList<>();
//        }else {
//            cart = (List<CartItem>) session.getAttribute("Cart");
//        }
//
//        CartItem item = new CartItem(product.getId(), product.getName(),1, product.getPrice() );
//        if(cart.contains(item)){
//            CartItem c = cart.get(cart.indexOf(item));
//            c.setQuantity(c.getQuantity()+1);
//        }else {
//            cart.add(item);
//        }
//
//        session.setAttribute("Cart",cart);
//        session.setAttribute("Size", cart.size());
//        int total =0;
//        for (CartItem i: cart){
//            total += (i.getPrice()*i.getQuantity());
//        }
//        session.setAttribute("Total",total);
//        System.out.println(cart.size());
//        List<CartItem> listProduct = new ArrayList<>();
//        for(CartItem c: cart){
//            CartItem item1 = new CartItem(c.getPro_id(),c.getName(),c.getQuantity(),c.getPrice());
//            listProduct.add(item1);
//        }
//        session.setAttribute("List",listProduct);
//        session.setAttribute("Cart",cart);
        request.getRequestDispatcher("giohang.jsp").forward(request,response);
    }
}
