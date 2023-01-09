package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServerletRequest;
//import javax.servlet.http.HttpServerletResponse;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EditInfo", urlPatterns = "/EditInfo")
public class EditInfo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        int uid = Integer.parseInt(request.getParameter("id"));
        String fname = request.getParameter("fullname");
        String pnum = request.getParameter("phone");
        String mail = request.getParameter("email");
        String gen = request.getParameter("gender");

        String pass = request.getParameter("old-pass");
        String npass = request.getParameter("new-pass");
        String rnpass = request.getParameter("renew-pass");
        UserService us = new UserService();
            us.updateAcount("Bùi Anh Tuấn", "0374839438", "tuan@gmai.com", "nam", 1);

            request.setAttribute("status", "Cập nhật thành công");
//            request.getRequestDispatcher("thongtintaikhoan.jsp").forward(request, response);



        UserBean user = us.checkUserByID(1);
        request.setAttribute("User",user);
        request.getRequestDispatcher("thongtintaikhoan.jsp").forward(request,response);
//


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
