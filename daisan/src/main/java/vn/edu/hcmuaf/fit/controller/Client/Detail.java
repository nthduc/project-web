package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.bean.TagBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;
import vn.edu.hcmuaf.fit.services.ProductService;
import vn.edu.hcmuaf.fit.services.TagService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Handle logic Detail
 *
 * @author Bui Anh Tuấn
 * @version 1.0
 * @since 2022-12-06
 */
@WebServlet(name = "Detail", urlPatterns = "/productDetail")
public class Detail extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
        TagService tag = new TagService();
        List<TagBean> listTag = tag.getAllTag();
        request.setAttribute("Tag",listTag);
           String name = "";
           String statusP ="";
           String action= "";
        int pID = Integer.parseInt(request.getParameter("product_id"));

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
        request.getRequestDispatcher("chitietsanpham.jsp").forward(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    public String getServletInfo() {
        return "....";
    }
}