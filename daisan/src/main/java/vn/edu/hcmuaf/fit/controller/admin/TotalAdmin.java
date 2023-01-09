package vn.edu.hcmuaf.fit.controller.admin;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.edu.hcmuaf.fit.db.ConnectionDB;

@WebServlet("/TotalAdminServlet")
public class TotalAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ConnectionDB.connect();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "SELECT SUM(orders.price) AS total_price FROM orders";
        PreparedStatement statement;
        try {
            statement = ConnectionDB.conn.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("totalAdmin2", result.getDouble("total_price"));
                System.out.println(session.getAttribute("totalAdmin2"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ConnectionDB.closeConnection();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ConnectionDB.connect();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "SELECT SUM(orders.price) AS total_price FROM orders";
        PreparedStatement statement;
        try {
            statement = ConnectionDB.conn.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("totalAdmin2", result.getDouble("total_price"));
                System.out.println(session.getAttribute("totalAdmin2"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ConnectionDB.closeConnection();
    }
    }