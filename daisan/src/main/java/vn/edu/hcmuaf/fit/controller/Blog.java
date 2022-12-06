package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.BlogBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;
import vn.edu.hcmuaf.fit.services.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import vn.edu.hcmuaf.fit.services.BlogService;

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
