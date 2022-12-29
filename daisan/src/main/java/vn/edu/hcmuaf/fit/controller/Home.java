package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.BannerBean;
import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "/Home", urlPatterns = "/Home")
public class Home extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String sql = "SELECT * FROM product LIMIT 55,18";
        String sql1 = "SELECT * FROM product LIMIT 1,6";
        String sql2 = "SELECT * FROM product LIMIT 36,6";
        String sql3 = "SELECT * FROM product LIMIT 98,5";
        String sql4 = "SELECT * FROM product LIMIT 10,6";
        String sql5 = "SELECT * FROM product LIMIT 30,8";
        String sql6 = "SELECT * FROM product LIMIT 1,9";
        String sql7 = "SELECT * FROM product LIMIT 4,3";
        String sql8 = "SELECT * FROM product LIMIT 7,3";
        ArrayList<ProductBean> listProducts = new ArrayList<>();
        ArrayList<ProductBean> listProducts1 = new ArrayList<>();
        ArrayList<ProductBean> listProducts2 = new ArrayList<>();
        ArrayList<ProductBean> listProducts3 = new ArrayList<>();
        ArrayList<ProductBean> listProducts4 = new ArrayList<>();
        ArrayList<ProductBean> listProducts5 = new ArrayList<>();
        ArrayList<ProductBean> listProducts6 = new ArrayList<>();
        ArrayList<ProductBean> listProducts7 = new ArrayList<>();
        ArrayList<ProductBean> listProducts8 = new ArrayList<>();

        HttpSession session = request.getSession();

        session.setAttribute("statusSearch","Category");

        try {
            ConnectionDB.connect();
            PreparedStatement statement = ConnectionDB.conn.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                listProducts.add( new ProductBean(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5),rs.getString(6),rs.getInt(7),rs.getString(8),rs.getString(9)));
            }
            request.setAttribute("Data",listProducts);

            PreparedStatement statement1 = ConnectionDB.conn.prepareStatement(sql1);
            ResultSet rs1 = statement1.executeQuery();
            while (rs1.next()) {
                listProducts1.add( new ProductBean(rs1.getString(1),rs1.getString(2),rs1.getString(3),rs1.getInt(4),rs1.getInt(5),rs1.getString(6),rs1.getInt(7),rs1.getString(8),rs1.getString(9)));
            }
            request.setAttribute("Data1",listProducts1);

            PreparedStatement statement2 = ConnectionDB.conn.prepareStatement(sql2);
            ResultSet rs2 = statement2.executeQuery();
            while (rs2.next()) {
                listProducts2.add( new ProductBean(rs2.getString(1),rs2.getString(2),rs2.getString(3),rs2.getInt(4),rs2.getInt(5),rs2.getString(6),rs2.getInt(7),rs2.getString(8),rs2.getString(9)));
            }
            request.setAttribute("Data2",listProducts2);

            PreparedStatement statement3 = ConnectionDB.conn.prepareStatement(sql3);
            ResultSet rs3 = statement3.executeQuery();
            while (rs3.next()) {
                listProducts3.add( new ProductBean(rs3.getString(1),rs3.getString(2),rs3.getString(3),rs3.getInt(4),rs3.getInt(5),rs3.getString(6),rs3.getInt(7),rs3.getString(8),rs3.getString(9)));
            }
            request.setAttribute("Data3",listProducts3);
            PreparedStatement statement4 = ConnectionDB.conn.prepareStatement(sql4);
            ResultSet rs4 = statement4.executeQuery();
            while (rs4.next()) {
                listProducts4.add( new ProductBean(rs4.getString(1),rs4.getString(2),rs4.getString(3),rs4.getInt(4),rs4.getInt(5),rs4.getString(6),rs4.getInt(7),rs4.getString(8),rs4.getString(9)));
            }
            request.setAttribute("Data4",listProducts4);
            PreparedStatement statement5 = ConnectionDB.conn.prepareStatement(sql5);
            ResultSet rs5 = statement5.executeQuery();
            while (rs5.next()) {
                listProducts5.add( new ProductBean(rs5.getString(1),rs5.getString(2),rs5.getString(3),rs5.getInt(4),rs5.getInt(5),rs5.getString(6),rs5.getInt(7),rs5.getString(8),rs5.getString(9)));
            }
            request.setAttribute("Data5",listProducts5);
            PreparedStatement statement6 = ConnectionDB.conn.prepareStatement(sql6);
            ResultSet rs6 = statement6.executeQuery();
            while (rs6.next()) {
                listProducts6.add( new ProductBean(rs6.getString(1),rs6.getString(2),rs6.getString(3),rs6.getInt(4),rs6.getInt(5),rs6.getString(6),rs6.getInt(7),rs6.getString(8),rs6.getString(9)));
            }
            request.setAttribute("Data6",listProducts6);
            PreparedStatement statement7 = ConnectionDB.conn.prepareStatement(sql7);
            ResultSet rs7 = statement7.executeQuery();
            while (rs7.next()) {
                listProducts7.add( new ProductBean(rs7.getString(1),rs7.getString(2),rs7.getString(3),rs7.getInt(4),rs7.getInt(5),rs7.getString(6),rs7.getInt(7),rs7.getString(8),rs7.getString(9)));
            }
            request.setAttribute("Data7",listProducts7);
            PreparedStatement statement8 = ConnectionDB.conn.prepareStatement(sql8);
            ResultSet rs8 = statement8.executeQuery();
            while (rs8.next()) {
                listProducts8.add( new ProductBean(rs8.getString(1),rs8.getString(2),rs8.getString(3),rs8.getInt(4),rs8.getInt(5),rs8.getString(6),rs8.getInt(7),rs8.getString(8),rs8.getString(9)));
            }
            request.setAttribute("Data8",listProducts8);

            ArrayList<BannerBean> listBanner = new ArrayList<>();

            PreparedStatement ps9 = ConnectionDB.conn.prepareStatement("select * from banner where id = ?");
            ps9.setString(1,"banner01");
            ResultSet rs9 = ps9.executeQuery();

            while (rs9.next()){
                listBanner.add(new BannerBean(rs9.getString(1),rs9.getString(2),rs9.getString(3),rs9.getString(4)));
            }
            session.setAttribute("listBanner",listBanner);
            request.getRequestDispatcher("home.jsp").forward(request,response);
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

    }


    public String getServletInfo() {
        return "....";
    }
}
