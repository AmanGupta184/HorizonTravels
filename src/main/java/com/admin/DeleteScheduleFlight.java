package com.admin;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.DAO.AdminDAOImpl;
import com.db.DBConnect;

@WebServlet("/delete_schflight")
public class DeleteScheduleFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteScheduleFlight() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		RequestDispatcher rd=null;
		try {
			Integer ScheduleID = Integer.parseInt(request.getParameter("sid"));
			Integer AirlineID = Integer.parseInt(request.getParameter("aid"));
			Integer FlightID = Integer.parseInt(request.getParameter("fid"));

			AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
			boolean f = dao.deleteSchFlight(ScheduleID, AirlineID, FlightID);
			rd=request.getRequestDispatcher("scheduledflight.jsp");
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
