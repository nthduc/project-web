package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.BlogBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BlogService {
    private static HttpServletRequest request;
    private static HttpServletResponse response;

    HttpSession session = request.getSession();
    ArrayList<BlogBean> listBlog = new ArrayList<>();

    public BlogService(){

    }

       public void Blog(){
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
           } catch (
                   SQLException throwables) {
               throwables.printStackTrace();
           } catch (ClassNotFoundException e) {
               e.printStackTrace();
           } catch (ServletException e) {
               e.printStackTrace();
           } catch (IOException e) {
               e.printStackTrace();
           }
       }
}
