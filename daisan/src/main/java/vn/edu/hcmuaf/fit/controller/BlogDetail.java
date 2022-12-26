package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.BlogBean;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import javax.validation.constraints.Null;
import java.io.*;
import java.util.ArrayList;

@WebServlet(name = "/BlogDetail", urlPatterns = "/BlogDetail")
public class BlogDetail extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        try {

            ArrayList<BlogBean> listBlog = (ArrayList<BlogBean>) session.getAttribute("listBlog");
            String blogid = request.getParameter("blogid");
            for (BlogBean blogbean : listBlog) {
                if (blogbean.getBlogid().equals(blogid)){
                    session.setAttribute("currentBlog",blogbean);
                }
            }

            request.getRequestDispatcher("chitietblog.jsp").forward(request,response);
        } catch (NullPointerException e){
            response.sendRedirect("Blog");
        }

    }

}