package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServerletRequest;
//import javax.servlet.http.HttpServerletResponse;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Xử lí phần đăng ký tài khoản
 *
 * @author Bui Anh Tuan
 * @version 1.0
 * @since 2022-12-15
 */
@WebServlet(name = "Signup",urlPatterns = "/Signup")
public class Signup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");
                int role =2;
                String username = request.getParameter("username");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String repass = request.getParameter("re_password");
            if (!password.equals(repass)){
                response.sendRedirect("dangnhapdangky.jsp");
            }else{
                UserService us = new UserService();
                UserBean u = us.checkUser(username);
                if (u== null){
                        us.themtaikhoan(role,username,email,password);

                        response.sendRedirect("home.jsp");
                }else{
                    response.sendRedirect("dangnhapdangky.jsp");
                }
            }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
