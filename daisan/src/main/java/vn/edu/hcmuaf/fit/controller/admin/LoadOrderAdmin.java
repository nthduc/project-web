package vn.edu.hcmuaf.fit.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.hcmuaf.fit.bean.OrderBean;
import vn.edu.hcmuaf.fit.services.OrderService;

@WebServlet("/LoadOrdersServlet")
public class LoadOrderAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<OrderBean> orders = OrderService.getInstance().getAllOrders();
        request.setAttribute("orders", orders);
        request.getRequestDispatcher("/admin/danhsachdonhang.jsp").forward(request, response);
    }
}