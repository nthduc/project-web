package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.BlogBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "/Blog", urlPatterns = "/Blog")
public class Blog extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        ArrayList<BlogBean> listBlog = new ArrayList<>();

        try {
            ConnectionDB.connect();

            PreparedStatement ps = ConnectionDB.con.prepareStatement("select blog.*,blogdetail.content from blog,blogdetail where blog.blogid = blogdetail.blogid");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                BlogBean blogBean = new BlogBean(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
                blogBean.setContent(rs.getString(6));
                listBlog.add(blogBean);
                PreparedStatement ps1 = ConnectionDB.con.prepareStatement("select name from user where id = ?");
                ps1.setString(1, blogBean.getUserid());
                ResultSet rs1 = ps1.executeQuery();
                if (rs1.next()){
                    blogBean.setUsername(rs1.getString(1));
                } else {
                    blogBean.setUsername("Ẩn danh");
                }
            }
            session.setAttribute("listBlog",listBlog);

            request.getRequestDispatcher("blog.jsp").forward(request,response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}
