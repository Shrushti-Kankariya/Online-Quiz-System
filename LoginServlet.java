package com.demo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Establish database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginproject", "root", "Admin12@");

            // Query to check if user exists with the provided username
            pstmt = con.prepareStatement("SELECT * FROM user WHERE username=? AND password=?");
            pstmt.setString(1, username);
            pstmt.setString(2, password);  // Compare plain password directly
            rs = pstmt.executeQuery();

            // If user exists and credentials match
            if (rs.next()) {
                // User is authenticated, create session
                HttpSession session = request.getSession();
                session.setAttribute("username", username);  // Store username in session

                // Redirect to DashboardServlet after successful login
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            } else {
                // Incorrect credentials
                showErrorMessage(request, response, "Invalid username or password.");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            showErrorMessage(request, response, "An error occurred: " + e.getMessage());
        } finally {
            // Close database resources
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // Utility method to show error message and return to login page
    private void showErrorMessage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().println("<h3 style='color:red; text-align:center'>" + message + "</h3>");
        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.include(request, response);
    }
}
