package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.bean.CartItem;
import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.bean.TagBean;
import vn.edu.hcmuaf.fit.services.ProductService;
import vn.edu.hcmuaf.fit.services.TagService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Add" ,urlPatterns = "/Add")
public class Add extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        TagService tag = new TagService();
        List<TagBean> listTag = tag.getAllTag();
        request.setAttribute("Tag",listTag);
        String name = "";
        String statusP ="";
        String action= "";
        int pID = Integer.parseInt(request.getParameter("id"));

        ProductService pro = new ProductService();
        ProductBean product = pro.getProductByID(pID);
        if (pID == product.getId()){
            name= product.getName();
        }
        if (product.getStatus()== 5){
            statusP =  " Hết hàng";
            action =" disabled";
        }else{
            statusP= " Còn hàng";
        }

        request.setAttribute("s",statusP);
        request.setAttribute("act",action);
        List<ProductBean> saleList = pro.getSaleProduct();
        request.setAttribute("Sale",saleList);
        List<ProductBean> like = pro.getFavorProduct();
        request.setAttribute("Like",like);
        request.setAttribute("namePro",name);
        request.setAttribute("Pro",product);
        List<ProductBean> list = pro.getAllProduct();

        List<CartItem> cart = null;
        HttpSession session = request.getSession();
        if (session.getAttribute("Cart")== null){
            cart = new ArrayList<>();
        }else {
            cart = (List<CartItem>) session.getAttribute("Cart");
        }

        CartItem item = new CartItem(product.getId(), product.getName(),1, product.getPrice() );
        if(cart.contains(item)){
            CartItem c = cart.get(cart.indexOf(item));
            c.setQuantity(c.getQuantity()+1);
        }else {
            cart.add(item);
        }

        session.setAttribute("Cart",cart);
        session.setAttribute("Size", cart.size());
        int total =0;
        for (CartItem i: cart){
            total += (i.getPrice()*i.getQuantity());
        }
        session.setAttribute("Total",total);
        System.out.println(cart.size());
        List<CartItem> listProduct = new ArrayList<>();
        for(CartItem c: cart){
            CartItem item1 = new CartItem(c.getPro_id(),c.getName(),c.getQuantity(),c.getPrice());
            listProduct.add(item1);
        }
        session.setAttribute("List",listProduct);
        request.getRequestDispatcher("chitietsanpham.jsp").forward(request,response);
    }
}
