package com.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.DAO.UserDAOImpl;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/Register2")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		RequestDispatcher rd;
		UserDAOImpl dao = new UserDAOImpl(DBConnect.getCon());
		try {
			String fname = request.getParameter("firstName");
			String email = request.getParameter("email");
			String phoneNo = request.getParameter("phoneNo");
			String pwd = request.getParameter("password");

			User us = new User();
			us.setFullName(fname);
			us.setEmail(email);
			us.setContact(phoneNo);
			us.setPassword(pwd);

			boolean f2 = dao.checkUser(email);
			rd = request.getRequestDispatcher("register.jsp");
			if (f2) {
				boolean f = dao.register(us);
				if (f) {
					request.setAttribute("status", "Registered Successfully...");
				} else {
					request.setAttribute("status", "Some error occured..");
				}
			} else {
				request.setAttribute("status", "Email already exists..");
			}
			rd.forward(request, response);
		} catch (Exception e) {
			out.println(e);
		}
	}

}
