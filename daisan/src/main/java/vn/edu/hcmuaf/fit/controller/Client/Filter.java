package vn.edu.hcmuaf.fit.controller.Client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.util.Arrays;
import java.util.List;

/**
 * Handle logic Filter features
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-06
 */

@WebServlet(name = "/Filter", urlPatterns = "/Filter")
public class Filter extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<String> filterList = null;

        String[] filters = request.getParameterValues("filters");
        filterList = Arrays.asList(filters);
        HttpSession session = request.getSession();

        filterList = Arrays.asList(filters);
        for (String item : filterList) {
            System.out.println(item);

        }

        session.setAttribute("filters",filterList);

        request.getRequestDispatcher("Category").forward(request,response);
    }

}
