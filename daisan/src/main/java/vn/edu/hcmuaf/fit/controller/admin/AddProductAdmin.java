package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddProductAdmin", value = "/AddProductAdmin")
public class AddProductAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/admin/danhsachsanpham.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // retrieve form data
        String name = request.getParameter("nameProduct");
        String description = request.getParameter("description");
        int price = Integer.parseInt(request.getParameter("price"));
        int salePrice = Integer.parseInt(request.getParameter("salePrice"));
        int status = Integer.parseInt(request.getParameter("status"));
        String company = request.getParameter("company");
        String img_URL = request.getParameter("imgURL");
        int tag_ID = Integer.parseInt(request.getParameter("tagID"));
        // create new product object
        ProductBean product = new ProductBean(name, img_URL, price, salePrice, description,status,company,tag_ID);

        // add product to database
        boolean success = ProductService.getInstance().addProduct(product);

        if (success) {
            // redirect to product list page
            request.getRequestDispatcher("/admin/danhsachsanpham.jsp").forward(request, response);
        } else {
            // show error message
            request.setAttribute("error", "Error adding product. Please try again.");
            request.getRequestDispatcher("/admin/danhsachsanpham.jsp").forward(request, response);
        }
    }
}
