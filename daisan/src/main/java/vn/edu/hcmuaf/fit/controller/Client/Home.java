package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.bean.BannerBean;
import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.bean.TagBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;
import vn.edu.hcmuaf.fit.services.BannerService;
import vn.edu.hcmuaf.fit.services.ProductService;
import vn.edu.hcmuaf.fit.services.TagService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Xử lí phần trang chủ
 *
 * @author Bui Anh Tuan
 * @version 1.0
 * @since 2022-12-31
 */
@WebServlet(name = "Home", urlPatterns = "/Home")
public class Home extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        Danh sách thể loại sản phẩm
        TagService tag = new TagService();
        List<TagBean> listTag = tag.getAllTag();
        request.setAttribute("Tag",listTag);
//        Danh sách sản phẩm đổ ra trang home
        ProductService pro = new ProductService();
//        Tất cả sản phẩm
        List<ProductBean> list = pro.getAllProduct();
        request.setAttribute("listP",list);
//        Sản phẩm mới
        List<ProductBean> listNew = pro.getNewProduct();
        List<ProductBean> tag1 = pro.getProductTag1();
        List<ProductBean> tag2 = pro.getProductTag2();
        List<ProductBean> tag3 = pro.getProductTag3();
        request.setAttribute("listN",listNew);
        request.setAttribute("Tag1",tag1);
        request.setAttribute("Tag2",tag2);
        request.setAttribute("Tag3",tag3);
//        Sản phẩm giảm giá
        List<ProductBean> saleList = pro.getSaleProduct();
        request.setAttribute("Sale",saleList);
//        Sản phẩm yêu thích
        List<ProductBean> like = pro.getFavorProduct();
        request.setAttribute("Like",like);
        //        Sản phẩm bán chạy
        List<ProductBean> top = pro.getTopProduct();
        request.setAttribute("Top",top);
//        Banner
        BannerService b = new BannerService();
        List<BannerBean> banner = b.getAllBanner();
        request.setAttribute("Banner",banner);
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    public String getServletInfo() {
        return "....";
    }
}
