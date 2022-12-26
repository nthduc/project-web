package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Xử lí phần đăng nhập
 *
 * @author Bui Anh Tuan
 * @version 1.0
 * @since 2022-12-25
 */
@WebServlet(name = "Login",urlPatterns = "/Login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserService us = new UserService();
        UserBean user = us.login(username,password);
        if (user == null){
            request.getRequestDispatcher("dangnhapdangky.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("home").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
