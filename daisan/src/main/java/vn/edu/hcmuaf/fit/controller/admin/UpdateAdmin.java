package vn.edu.hcmuaf.fit.controller.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
/**
 * Update Admin
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-31
 */
@WebServlet(name = "/UpdateAdmin", urlPatterns = "/UpdateAdmin")
public class UpdateAdmin extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("ExtrasProfile");
    }

}