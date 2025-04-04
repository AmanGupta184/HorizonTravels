package com.admin;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.DAO.AdminDAOImpl;
import com.db.DBConnect;

@WebServlet("/delete_airline")
public class DeleteAirline extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteAirline() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
		try {
			Integer AirlineID = Integer.parseInt(request.getParameter("id"));
			AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
			boolean f = dao.deleteAirline(AirlineID);
			rd = request.getRequestDispatcher("airlinemanagement.jsp");
			if (f) {
				request.setAttribute("status", "success");
				rd.forward(request, response);
			} else {
				request.setAttribute("status", "failed");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			out.println(e);
		}
	}

}
