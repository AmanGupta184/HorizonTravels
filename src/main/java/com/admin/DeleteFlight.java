package com.admin;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.DAO.AdminDAOImpl;
import com.db.DBConnect;

@WebServlet("/delete_flight")
public class DeleteFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteFlight() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
		try {
			Integer AirlineID = Integer.parseInt(request.getParameter("aid"));
			Integer FlightID = Integer.parseInt(request.getParameter("fid"));

			AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
			boolean f = dao.deleteFlight(FlightID, AirlineID);
			rd = request.getRequestDispatcher("flightmanagement.jsp");
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
