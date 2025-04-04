package com.admin;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.DAO.AdminDAOImpl;
import com.db.DBConnect;
import com.entity.Flights;

@WebServlet("/edit_flight")
public class EditFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditFlightServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
		try {
			Integer AirlineID = Integer.parseInt(request.getParameter("airlineid"));
			Integer FlightID = Integer.parseInt(request.getParameter("flightid"));
			Integer FlightNo = Integer.parseInt(request.getParameter("flightno"));
			Integer EcoSeats = Integer.parseInt(request.getParameter("NOE"));
			Integer BusSeats = Integer.parseInt(request.getParameter("NOB"));
			Integer FirSeats = Integer.parseInt(request.getParameter("NOF"));
			Integer TotSeats = Integer.parseInt(request.getParameter("TNOS"));

			Flights fa = new Flights();
			fa.setFlightNo(FlightNo);
			fa.setEconomySeats(EcoSeats);
			fa.setBusinessSeats(BusSeats);
			fa.setFirstClassSeats(FirSeats);
			fa.setTotalSeats(TotSeats);

			AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
			boolean f = dao.updateFlight(AirlineID, FlightID, fa);
			rd = request.getRequestDispatcher("EditFlight.jsp");
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
