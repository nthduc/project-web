package vn.edu.hcmuaf.fit.controller.Client;

import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.controller.FindProduct;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "/WishList", urlPatterns = "/WishList")
public class WishList extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        UserBean user = (UserBean) session.getAttribute("user");
        ArrayList<ProductBean> list = new ArrayList<>();
        try {
            ConnectionDB.connect();

            String addID = request.getParameter("addid");
            String removeID = request.getParameter("removeid");
            if (addID != null){
                PreparedStatement ps = ConnectionDB.conn.prepareStatement("select * from wishlist where userid=?");
                ps.setInt(1,user.getUser_ID());
                ResultSet rs = ps.executeQuery();
                int count = 0;
                while (rs.next()){
                    String tmpid = rs.getString(2);
                    if (tmpid.equals(addID)){
                        count++;
                    }
                }
                if (count == 0){
                    PreparedStatement ps1 = ConnectionDB.conn.prepareStatement("insert into wishlist (userid,productid) values (?,?)");
                    ps.setInt(1,user.getUser_ID());
                    ps1.setString(2,addID);
                    ps1.executeUpdate();
                }
            }
            if (removeID != null){
                PreparedStatement ps = ConnectionDB.conn.prepareStatement("delete from wishlist where userid=? and productid=?");
                ps.setInt(1,user.getUser_ID());
                ps.setString(2,removeID);
                ps.executeUpdate();
            }


            PreparedStatement ps = ConnectionDB.conn.prepareStatement("select * from wishlist where userid=?");
            ps.setInt(1,user.getUser_ID());
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(FindProduct.findProduct(rs.getString(2)));
            }


            session.setAttribute("wishListProduct",list);
            request.getRequestDispatcher("sanphamyeuthich.jsp").forward(request,response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}