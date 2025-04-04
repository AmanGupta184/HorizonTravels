package com.admin;

import java.io.*;
import java.time.LocalDate;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.DAO.AdminDAOImpl;
import com.db.DBConnect;
import com.entity.Airline;

@WebServlet("/add_airline")
public class AddAirline extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddAirline() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		RequestDispatcher rd;
		try {
			LocalDate d = LocalDate.now();
			String AirlineName = request.getParameter("fname");
			String date = d.toString();
			Airline a = new Airline();
			a.setAirlineName(AirlineName);
			a.setAddedDate(date);

			AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
			rd = request.getRequestDispatcher("addairline.jsp");
			boolean g = dao.checkName(AirlineName);
			if (g == true) {
				boolean f = dao.addAirline(a);
				if (f) {
					request.setAttribute("status", "success");
					rd.forward(request, response);
				} else {
					request.setAttribute("status", "failed");
					rd.forward(request, response);
				}
			} else {
				request.setAttribute("status", "failed2");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			out.println(e);
		}
	}

}
