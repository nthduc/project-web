package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.InfoBean;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;

@WebServlet(name = "/SaveInformation", urlPatterns = "/SaveInformation")
public class SaveInformation extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        InfoBean info = new InfoBean(request.getParameter("fname")+" "+request.getParameter("lname"),request.getParameter("company"),request.getParameter("phone"),request.getParameter("phuong")+","+request.getParameter("quan")+","+request.getParameter("tinh"));
        HttpSession session = request.getSession();
        session.setAttribute("info",info);
        response.sendRedirect("ExcuteOrder");
    }

}
