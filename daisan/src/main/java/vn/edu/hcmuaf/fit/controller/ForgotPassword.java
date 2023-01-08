package vn.edu.hcmuaf.fit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Xử lí Chức năng quên mật khẩu
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-06
 */
@WebServlet(name = "/forgotpassword", urlPatterns = "/forgotpassword")
public class ForgotPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {



    }
}

