package com.register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String pass = req.getParameter("password");
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");

		if (name == null || name.isEmpty() || email == null || email.isEmpty() || pass == null || pass.isEmpty()
				|| gender == null || gender.isEmpty() || city == null || city.isEmpty()) {

			out.println("<h3 style='color:red'>All fields are required!</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
			rd.include(req, resp);
			return;
		}

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/register_login";
			String dbUsername = "root";
			String dbPassword = "root";

			Connection con = DriverManager.getConnection(url, dbUsername, dbPassword);

			String query = "INSERT INTO register (name, email, password, gender, city) values(?,?,?,?,?)";
			PreparedStatement psmt = con.prepareStatement(query);
			psmt.setString(1, name);
			psmt.setString(2, email);
			psmt.setString(3, pass);
			psmt.setString(4, gender);
			psmt.setString(5, city);

			int rowEffected = psmt.executeUpdate();

			if (rowEffected > 0) {
				out.println("<h3 style = 'color:green'> User Successfully Registered </h3>");
				resp.sendRedirect("login.jsp");

			} else {
				out.println("<h3 style = 'color:red'> User not registerd due to some error </h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, resp);
			}

		} catch (Exception e) {
			e.printStackTrace();
			out.println("<h3 style = 'color:red'> Exception Occured : " + e.getMessage() + "</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
			rd.include(req, resp);
		}
	}
}
