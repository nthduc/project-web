package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoadProduct", urlPatterns = "/products")
public class LoadProduct extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductService pro = new ProductService();
        List<ProductBean> list1 = new ArrayList<>();
        list1 = pro.getAllProduct();
        request.setAttribute("listP",list1);
        List<ProductBean> listNew = pro.getNewProduct();
        HttpSession session = request.getSession();
        session.setAttribute("list",listNew);
        request.getRequestDispatcher("cuaso.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException
    {
//        response.setContentType("text/html;charset=UTF-8");
//        ProductService pro = new ProductService();
//        List<ProductBean> listP = pro.getAllProduct();
//        request.setAttribute("listP",listP);
//        List<ProductBean> listNew = pro.getNewProduct();
//        HttpSession session = request.getSession();
//        session.setAttribute("list",listNew);
//        request.getRequestDispatcher("cuaso.jsp").forward(request,response);
////        request.getRequestDispatcher("cuaso.jsp").forward(request,response);
    }
}
