package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.services.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;

@WebServlet(name = "/Blog", urlPatterns = "/Blog")
public class Blog extends HttpServlet {

    private static BlogService blogService;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        blogService.Blog();
    }

}
