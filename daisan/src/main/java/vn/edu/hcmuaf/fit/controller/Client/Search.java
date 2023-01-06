package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.bean.TagBean;
import vn.edu.hcmuaf.fit.services.ProductService;
import vn.edu.hcmuaf.fit.services.TagService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Search", urlPatterns = "/Search")
public class Search extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String word = request.getParameter("txt");
        ProductService pro = new ProductService();
        List<ProductBean> listSearch= pro.searchProductByName(word);
        request.setAttribute("ListS",listSearch);
        request.setAttribute("wordS",word);
        ///
        //        Danh sách thể loại sản phẩm
        TagService tag = new TagService();
        List<TagBean> listTag = tag.getAllTag();
        request.setAttribute("Tag",listTag);

        request.getRequestDispatcher("ketqua.jsp").forward(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

}