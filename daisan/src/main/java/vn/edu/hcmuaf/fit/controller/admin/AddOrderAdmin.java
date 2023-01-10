package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.bean.OrderBean;
import vn.edu.hcmuaf.fit.services.OrderService;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "AddOrderAdmin", value = "/AddOrderAdmin")
public class AddOrderAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            SimpleDateFormat in = new SimpleDateFormat("yyyy-MM-dd");

            int user_ID = Integer.parseInt(request.getParameter("userID"));
            int num_item = Integer.parseInt(request.getParameter("numItem"));
            int price = Integer.parseInt(request.getParameter("priceOrder"));
            String payment = request.getParameter("payment");
            String delivery = request.getParameter("delivery");
            String recept = request.getParameter("recept");
            Date delivery_date =  in.parse(delivery);
            Date recept_date = in.parse(recept);

            String status = request.getParameter("status");

            OrderBean order = new OrderBean(user_ID,num_item,price,payment,delivery_date,recept_date,status);

            boolean success = OrderService.getInstance().addOrder(order);

            if (success) {
                // redirect to product list page
                request.getRequestDispatcher("/admin/danhsachdonhang.jsp").forward(request, response);
            } else {
                // show error message
                request.setAttribute("error", "Error adding product. Please try again.");
                request.getRequestDispatcher("/admin/danhsachdonhang.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
    }
    }
}
