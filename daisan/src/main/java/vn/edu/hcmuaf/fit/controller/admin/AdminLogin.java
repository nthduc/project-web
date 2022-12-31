package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;
import vn.edu.hcmuaf.fit.helper.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * Login Admin
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-31
 */
@WebServlet(name = "AdminLogin", value = "/AdminLogin")
public class AdminLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String message = "";
            ConnectionDB.connect();
            HttpSession session = request.getSession();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement("select password from users where email=?");
            ps.setString(1,request.getParameter("email"));
            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                BCrypt bCrypt = new BCrypt();

                if(bCrypt.checkpw(request.getParameter("password"),rs.getString(1))){
                    PreparedStatement statement = ConnectionDB.conn.prepareStatement("select * from users where email=?");
                    statement.setString(1,request.getParameter("email"));
                    ResultSet rs1 = statement.executeQuery();
                    if(rs1.next()){
                        // check role = 1 thi la tai khoan admin
                            if(rs1.getInt(1) == 1){
                                UserBean user = new UserBean(rs1.getInt(1),rs1.getString(2),rs1.getString(3),rs1.getString(4),rs1.getString(5),rs1.getString(6),rs1.getString(7));
                                session.setAttribute("useradmin",user);
                                request.getRequestDispatcher("AdminHome").forward(request,response);
                            }
                    }
                } else {
                    message = "<script>" +
                            "alert('Tài khoản hoặc mật khẩu khổng chính xác')</script>";
                    session.setAttribute("message",message);
                    response.sendRedirect("Login");
                }
            } else {
                message = "<script>" +
                        "alert('Tài khoản hoặc mật khẩu khổng chính xác')</script>";
                session.setAttribute("message",message);
                response.sendRedirect("Login");
            }
        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        }
    }
}
