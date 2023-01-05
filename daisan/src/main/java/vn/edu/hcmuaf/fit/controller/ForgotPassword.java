package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Xử lí Chức năng quên mật khẩu
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-06
 */
@WebServlet(name = "/forgotpassword", urlPatterns = "/forgotpassword")
public class ForgotPassword extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the email address from the form
        String email = request.getParameter("email");
        // Look up the user's account in the database
        UserBean account = getUserAccount(email);
        if (account == null) {
        // Account not found. Redirect user to an error page.
            response.sendRedirect("500.jsp");
            return;
        } else {
            // Generate a new password for the user
            String newPassword = generatePassword();
            // Update the user's account with the new password
            updateUserPassword(account, newPassword);
            // Send an email to the user with the new password
            sendPasswordEmail(account, newPassword);
            // Redirect the user to a confirmation page
            response.sendRedirect("quenmatkhau.jsp");
        }
    }

    private UserBean getUserAccount(String email) {

        try {
            // Connect to the database
            ConnectionDB.connect();

            // Create the SQL query
            String sql = "SELECT * FROM users WHERE email = ?";
            PreparedStatement stmt = ConnectionDB.conn.prepareStatement(sql);
            stmt.setString(1, email);
            // Execute the query and get the result set
            ResultSet rs = stmt.executeQuery();

            // If the query returns a result, create a new UserAccount object
            // and set its values from the result set
            if (rs.next()) {
                UserBean account = new UserBean();
                account.setUser_ID(rs.getInt("user_ID"));
                account.setRole_ID(rs.getInt("role_ID"));
                account.setUsername(rs.getString("username"));
                account.setEmail(rs.getString("email"));
                account.setPassword(rs.getString("password"));
                account.setFullname(rs.getString("fullname"));
                account.setGender(rs.getString("gender"));
                account.setDob(rs.getDate("dob"));
                account.setPhone(rs.getString("phone"));
                account.setAddress(rs.getString("address"));
                // Set other properties of the UserAccount object as needed
                return account;
            } else {
                return null;
            }
        } catch (SQLException se) {
            // Handle any SQL errors
            se.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return new UserBean();
    }

    private String generatePassword() {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();

        // Generate a random 8-character alphanumeric string
        for (int i = 0; i < 8; i++) {
            int randomNum = random.nextInt((57 - 48) + 1) + 48;
            char randomChar = (char) randomNum;
            if (Character.isLetterOrDigit(randomChar)) {
                sb.append(randomChar);
            } else {
                i--;
            }
        }

        return sb.toString();
    }

    private void updateUserPassword(UserBean account, String newPassword) {
        try {
            // Connect to the database
            ConnectionDB.connect();

            // Create the SQL update statement
            String sql = "UPDATE users SET password = ? WHERE user_ID = ?";
            PreparedStatement stmt = ConnectionDB.conn.prepareStatement(sql);
            stmt.setString(1, newPassword);
            stmt.setInt(2, account.getUser_ID());

            // Execute the update
            stmt.executeUpdate();
        } catch (SQLException | ClassNotFoundException se) {
            // Handle any SQL errors
            se.printStackTrace();
        }
    }

    private void sendPasswordEmail(UserBean account, String newPassword) {
        // Recipient's email address
        String to = account.getEmail();
        // Sender's email address
        String from = "18130047@st.hcmuaf.edu.vn";
        // Get system properties
        Properties properties = System.getProperties();
        // Setup mail server
        properties.setProperty("mail.smtp.host", "smtp.gmail.com");
        // Get the default Session object
        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("username", "password");
            }
        });
        try {
            // Create a default MimeMessage object
            MimeMessage message = new MimeMessage(session);
            // Set the email address of the recipient
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            // Set the email address of the sender
            message.setFrom(new InternetAddress(from));
            // Set the subject of the email
            message.setSubject("Your new password");
            // Set the message body of the email
            message.setText("Your new password is: " + newPassword);
            // Send the email
            Transport.send(message);

        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }
}

