package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();

		String email = req.getParameter("emaill");
		String password = req.getParameter("passwordd");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/register_login";
			String dbUsername = "root";
			String dbPassword = "root";

			Connection con = DriverManager.getConnection(url, dbUsername, dbPassword);

			String query = "SELECT * from register WHERE email = ? and password = ?";
			PreparedStatement psmt = con.prepareStatement(query);
			psmt.setString(1, email);
			psmt.setString(2, password);

			ResultSet rs = psmt.executeQuery();
			if (rs.next()) {

				HttpSession session = req.getSession();
				session.setAttribute("session_name", rs.getString("name"));
				resp.sendRedirect("profile.jsp");

			} else {
				out.println("<h3 style='color:red'> Email id and password didn't matched </h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
				rd.include(req, resp);
			}

		} catch (Exception e) {
			out.println("<h3 style='color:red'> " + e.getMessage() + "</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
			rd.include(req, resp);
		}
	}

}
