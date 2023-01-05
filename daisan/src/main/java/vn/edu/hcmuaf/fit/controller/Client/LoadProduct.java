package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.bean.TagBean;
import vn.edu.hcmuaf.fit.services.ProductService;
import vn.edu.hcmuaf.fit.services.TagService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoadProduct", urlPatterns = "/products")
public class LoadProduct extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                    response.setContentType("text/html;charset=UTF-8");
//        Danh sách thể loại sản phẩm
                    TagService tag = new TagService();
                    List<TagBean> listTag = tag.getAllTag();
                    request.setAttribute("Tag",listTag);
//        Danh sách sản phẩm theo thể loại
                    ProductService pro = new ProductService();
                    int tag_id = Integer.parseInt(request.getParameter("tag_ID"));
                    String nameTag = "";
                    for (TagBean t:listTag
                         ) {
                        if (t.getTag_ID() == tag_id){
                            nameTag = t.getName();
                        }
                    }
                   request.setAttribute("name",nameTag);
                    request.setAttribute("id",tag_id);
                    List<ProductBean> listC = pro.getAllProductByTagID(tag_id);
                    request.setAttribute("ListC",listC);
                    request.getRequestDispatcher("dssanpham.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }
}
