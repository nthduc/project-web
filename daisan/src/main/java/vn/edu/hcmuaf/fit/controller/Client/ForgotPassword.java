package vn.edu.hcmuaf.fit.controller.Client;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.services.UserService;
import vn.edu.hcmuaf.fit.utils.EmailUtils;
import vn.edu.hcmuaf.fit.utils.Email;
/**
 * Xử lí Chức năng quên mật khẩu
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-06
 */



@WebServlet(name = "ForgotPasswordControl", urlPatterns = {"/forgotPassword"})
    public class ForgotPassword extends HttpServlet {

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("quenmatkhau.jsp").forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            try {
                String emailAddress = request.getParameter("email");
                String username = request.getParameter("uname");

                UserService userService  = new UserService();
                UserBean account = userService.checkAccountExistEmail(username,emailAddress);
                if (account == null) {
                    request.setAttribute("mess", "Thông tin không tồn tại, hãy kiểm tra lại");
                    request.getRequestDispatcher("quenmatkhau.jsp").forward(request, response);
                }
                if (account != null) {
                    Email email = new Email();
                    email.setFrom("nguyenthaiducbhsmn@gmail.com");
                    email.setFromPassword("hjfxosozfyrtzrfc");
                    email.setTo(emailAddress);
                    email.setSubject("Daisan. Forgot password ");
                    StringBuilder sb = new StringBuilder();
                    sb.append("Dear ").append(username).append("<br>");
                    sb.append("You are used the forgot password. <br> ");
                    sb.append("Your password is <b>").append(account.getPassword()).append(" </b> <br>");
                    sb.append("Regards<br>");
                    sb.append("Administrator");

                    email.setContent(sb.toString());
                    EmailUtils.send(email);

                    request.setAttribute("mess", "Mật khẩu đã được gửi đến mail, vui lòng kiểm tra để thực hiện đăng nhập!");
                    request.getRequestDispatcher("dangnhap.jsp").forward(request, response);

                }

            } catch (Exception e) {
                e.printStackTrace();
            }
//            request.getRequestDispatcher("quenmatkhau.jsp").forward(request, response);

        }

    }


