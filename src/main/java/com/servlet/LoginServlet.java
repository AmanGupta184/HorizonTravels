package com.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.DAO.UserDAOImpl;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		RequestDispatcher rd;
		UserDAOImpl dao = new UserDAOImpl(DBConnect.getCon());
		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			if (email.equalsIgnoreCase("admin@gmail.com") && password.equals("Admin@123")) {
				User us = new User();
				us.setFullName("Admin");
				session.setAttribute("userobj", us);
				response.sendRedirect("home.jsp");
			} else {
				User us = dao.login(email, password);
				if (us != null) {
					session.setAttribute("userobj", us);
					rd = request.getRequestDispatcher("index.jsp");
				} else {
					request.setAttribute("status", "Failed");
					rd = request.getRequestDispatcher("login.jsp");
				}
				rd.forward(request, response);
			}
		} catch (Exception e) {
			out.println(e);
		}
	}

}
