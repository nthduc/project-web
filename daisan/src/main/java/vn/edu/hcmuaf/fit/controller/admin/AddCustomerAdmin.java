package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.services.ProductService;
import vn.edu.hcmuaf.fit.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCustomerAdmin", value = "/AddCustomerAdmin")
public class AddCustomerAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/admin/danhsachkhachhang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // retrieve form data
        int role_ID = Integer.parseInt(request.getParameter("roleUser"));
        String username = request.getParameter("nameUser");
        String password = request.getParameter("passUser");
        String email = request.getParameter("emailUser");
        String fullname = request.getParameter("fullNameUser");
        String gender = request.getParameter("genderUser");
        String phone = request.getParameter("phoneUser");
        String address = request.getParameter("addressUser");

        UserBean user = new UserBean(role_ID,username,password,email,fullname,gender,phone,address);
        boolean success = UserService.getInstance().addCustomer(user);

        if (success) {
            // redirect to product list page
            request.getRequestDispatcher("/admin/danhsachkhachhang.jsp").forward(request, response);
        } else {
            // show error message
            request.setAttribute("error", "Error adding product. Please try again.");
            request.getRequestDispatcher("/admin/danhsachkhachhang.jsp").forward(request, response);
        }
    }
    }
