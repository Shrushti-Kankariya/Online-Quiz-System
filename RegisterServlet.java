package com.demo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String mobileNumber = request.getParameter("mobileNumber");
        String gender = request.getParameter("gender");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Check if passwords match
        if (!password.equals(confirmPassword)) {
            out.print("<h3 style='color:red;'>Passwords do not match. Please try again.</h3>");
            RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
            rd.include(request, response);
            return;
        }

        try {
            // Establish database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequizsystem", "root", "Admin12@");

            // Query to insert user details into the database
            PreparedStatement pstmt = con.prepareStatement("INSERT INTO user (fullname, username, email, mobileNumber, gender, password) VALUES (?, ?, ?, ?, ?, ?)");
            pstmt.setString(1, fullName);
            pstmt.setString(2, username);
            pstmt.setString(3, email);
            pstmt.setString(4, mobileNumber);
            pstmt.setString(5, gender);
            pstmt.setString(6, password);

            pstmt.executeUpdate();

            out.print("<h3 style='text-align:center'>Registered Successfully! Please login now.</h3>");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.print("<h3 style='color:red;'>An error occurred: " + e.getMessage() + "</h3>");
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
