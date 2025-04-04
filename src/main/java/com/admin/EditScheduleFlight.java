package com.admin;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.DAO.AdminDAOImpl;
import com.db.DBConnect;
import com.entity.ScheduleFlight;

@WebServlet("/edit_schedule")
public class EditScheduleFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditScheduleFlight() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
		try {
			Integer ScheduleID = Integer.parseInt(request.getParameter("scheduleid"));
			Integer AirlineID = Integer.parseInt(request.getParameter("airlineid"));
			Integer FlightID = Integer.parseInt(request.getParameter("flightid"));
			String Source = request.getParameter("src");
			String Destination = request.getParameter("dest");
			String dept = request.getParameter("depTime");
			String arrival = request.getParameter("arrTime");
			String arr[] = dept.split("T");
			String arr1[] = arrival.split("T");
			String DepartureDate = arr[0];
			String DepartureTime = arr[1];
			String ArrivalDate = arr1[0];
			String ArrivalTime = arr1[1];
			Float EcoCost = Float.parseFloat(request.getParameter("EcoCost"));
			Float BusCost = Float.parseFloat(request.getParameter("BusCost"));
			Float FirCost = Float.parseFloat(request.getParameter("FirCost"));

			ScheduleFlight sf = new ScheduleFlight();
			sf.setSource(Source);
			sf.setDestination(Destination);
			sf.setDepartureDate(DepartureDate);
			sf.setDepartureTime(DepartureTime);
			sf.setArrivalDate(ArrivalDate);
			sf.setArrivalTime(ArrivalTime);
			sf.setEconomyCost(EcoCost);
			sf.setBusinessCost(BusCost);
			sf.setFirstClassCost(FirCost);

			AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
			boolean f = dao.updateSchFlight(ScheduleID, AirlineID, FlightID, sf);
			rd = request.getRequestDispatcher("EditScheduleFlight.jsp");
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
