package vn.edu.hcmuaf.fit.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServerletRequest;
//import javax.servlet.http.HttpServerletResponse;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Signup",urlPatterns = "/Signup")
public class Signup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//                response.setContentType("text/html;charset=UTF-8");
//                String username = request.getParameter('username');
//                String email = request.getParameter('email');
//                String password = request.getParameter('password');
//                String repass = request.getParameter('re_password');

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
