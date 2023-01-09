package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.bean.TagBean;
import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.services.TagService;
import vn.edu.hcmuaf.fit.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServerletRequest;
//import javax.servlet.http.HttpServerletResponse;
import java.io.IOException;
import java.util.List;
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
                request.setAttribute("mess","Mật khẩu không trùng khớp");
                request.getRequestDispatcher("dangky.jsp").forward(request,response);
            }else{
                UserService us = new UserService();
                UserBean u = us.checkUser(username);
                if (u== null){
                        us.themtaikhoan(role,username,email,password);

                    request.setAttribute("mess","Tài khoản đã đăng ký thành công, đăng nhập để sử dụng");
                    request.getRequestDispatcher("dangnhap.jsp").forward(request,response);
                }else{
                    request.setAttribute("mess","Tài khoản đã tồn tại");
                    request.getRequestDispatcher("dangky.jsp").forward(request,response);
                }
            }
//           request.getRequestDispatcher("dangky.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
