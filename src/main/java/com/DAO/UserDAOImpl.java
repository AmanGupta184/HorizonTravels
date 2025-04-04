package com.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.entity.*;

public class UserDAOImpl implements UserDAO {
	private Connection con;

	public UserDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	@Override
	public boolean register(User us) {
		boolean f = false;
		try {
			String sql = "insert into user(FullName,Email,Contact,Password)values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, us.getFullName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getContact());
			ps.setString(4, us.getPassword());
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean checkUser(String email) {
		boolean f = true;
		try {
			String sql = "select * from user where Email=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public User login(String email, String password) {
		User us = null;
		try {
			String sql = "select * from user where Email=? and Password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				us = new User();
				us.setId(rs.getInt(1));
				us.setFullName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setContact(rs.getString(4));
				us.setPassword(rs.getString(5));
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return us;
	}

	@Override
	public List<ScheduleFlight> getFlightBySearch(String from, String to, String Date) {
		List<ScheduleFlight> list = new ArrayList<ScheduleFlight>();
		ScheduleFlight sf = null;
		try {
			String sql = "select sf.ScheduleID,sf.FlightID,sf.AirlineID,a.AirlineName,f.FlightNo,sf.Source,sf.Destination,sf.DepartureDate,sf.DepartureTime,sf.ArrivalDate,sf.ArrivalTime,sf.EcoSeatCost,sf.BusSeatCost,sf.FirSeatCost \r\n"
					+ "from schedule_flight sf join flights f on sf.FlightID=f.FlightID join airline a on a.AirlineID=sf.AirlineID where sf.Source=? and sf.Destination=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, from);
			ps.setString(2, to);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				sf = new ScheduleFlight();
				sf.setScheduleID(rs.getInt(1));
				sf.setFlightID(rs.getInt(2));
				sf.setAirlineID(rs.getInt(3));
				sf.setAirlineName(rs.getString(4));
				sf.setFlightNo(rs.getInt(5));
				sf.setSource(rs.getString(6));
				sf.setDestination(rs.getString(7));
				sf.setDepartureDate(rs.getString(8));
				sf.setDepartureTime(rs.getString(9));
				sf.setArrivalDate(rs.getString(10));
				sf.setArrivalTime(rs.getString(11));
				sf.setEconomyCost(rs.getFloat(12));
				sf.setBusinessCost(rs.getFloat(13));
				sf.setFirstClassCost(rs.getFloat(14));
				list.add(sf);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public ScheduleFlight getFlightById(int id) {
		ScheduleFlight sf = null;
		try {
			String sql = "select sf.ScheduleID,sf.FlightID,sf.AirlineID,a.AirlineName,f.FlightNo,sf.Source,sf.Destination,sf.DepartureDate,sf.DepartureTime,sf.ArrivalDate,sf.ArrivalTime,sf.EcoSeatCost,sf.BusSeatCost,sf.FirSeatCost \r\n"
					+ "from schedule_flight sf join flights f on sf.FlightID=f.FlightID join airline a on a.AirlineID=sf.AirlineID where sf.FlightID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				sf = new ScheduleFlight();
				sf.setScheduleID(rs.getInt(1));
				sf.setFlightID(rs.getInt(2));
				sf.setAirlineID(rs.getInt(3));
				sf.setAirlineName(rs.getString(4));
				sf.setFlightNo(rs.getInt(5));
				sf.setSource(rs.getString(6));
				sf.setDestination(rs.getString(7));
				sf.setDepartureDate(rs.getString(8));
				sf.setDepartureTime(rs.getString(9));
				sf.setArrivalDate(rs.getString(10));
				sf.setArrivalTime(rs.getString(11));
				sf.setEconomyCost(rs.getFloat(12));
				sf.setBusinessCost(rs.getFloat(13));
				sf.setFirstClassCost(rs.getFloat(14));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sf;
	}

}
