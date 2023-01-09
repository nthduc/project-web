package vn.edu.hcmuaf.fit.controller.admin;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.services.UserService;
@WebServlet("/loadcustomers")
public class LoadCustomerAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<UserBean> customers = UserService.getInstance().getCustomers();
        request.setAttribute("customers", customers);
        request.getRequestDispatcher("/admin/danhsachkhachhang.jsp").forward(request, response);
    }
}