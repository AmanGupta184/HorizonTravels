package com.admin;

import java.io.*;
import java.util.Iterator;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.DAO.AdminDAOImpl;
import com.db.DBConnect;
import com.entity.Flights;

@WebServlet("/add_flight")
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddFlight() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
		try {
			Integer AirlineID = Integer.parseInt(request.getParameter("airline"));
			Integer FlightNo = Integer.parseInt(request.getParameter("flightno"));
			Integer EconomySeats = Integer.parseInt(request.getParameter("NOE"));
			Integer BusinessSeats = Integer.parseInt(request.getParameter("NOB"));
			Integer FirstClassSeats = Integer.parseInt(request.getParameter("NOF"));
			Integer TotalSeats = Integer.parseInt(request.getParameter("TNOS"));

			Flights f = new Flights();
			f.setAirlineID(AirlineID);
			f.setFlightNo(FlightNo);
			f.setEconomySeats(EconomySeats);
			f.setBusinessSeats(BusinessSeats);
			f.setFirstClassSeats(FirstClassSeats);
			f.setTotalSeats(TotalSeats);

			AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
			rd = request.getRequestDispatcher("addflight.jsp");
			boolean g = dao.checkFlightNo(FlightNo,AirlineID);
			if (g == true) {
				boolean fa = dao.addFlight(f);

				if (fa) {
					request.setAttribute("status", "success");
				} else {
					request.setAttribute("status", "failed");
				}
			} else {
				request.setAttribute("status", "failed2");
			}
			rd.forward(request, response);
		} catch (Exception e) {
			out.println(e);
		}
	}

}
