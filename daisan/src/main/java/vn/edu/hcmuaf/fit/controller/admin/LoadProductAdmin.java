package vn.edu.hcmuaf.fit.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.services.ProductService;

@WebServlet("/LoadProductServlet")
public class LoadProductAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Load list of products from database
        List<ProductBean> products = ProductService.getInstance().getAllProducts();

        // Store list of products in session attribute
        HttpSession session = request.getSession();
        session.setAttribute("products", products);
        request.setAttribute("productsAdmin", products);
        request.getRequestDispatcher("/admin/danhsachsanpham.jsp").forward(request, response);
    }
}