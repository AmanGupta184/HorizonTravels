package com.DAO;

import java.sql.*;
import java.util.*;
import com.entity.*;

public class AdminDAOImpl implements AdminDAO {
	private Connection con;

	public AdminDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	@Override
	public boolean addAirline(Airline a) {
		boolean f = false;
		try {
			String sql = "insert into airline(AirlineName,AddedDate)values(?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, a.getAirlineName());
			ps.setString(2, a.getAddedDate());
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
	public boolean checkName(String name) {
		boolean f = true;
		try {
			String sql = "select * from airline where AirlineName=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
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
	public List<Airline> getAirline() {
		List<Airline> list = new ArrayList<Airline>();
		Airline a = null;
		try {
			String sql = "select a.AirlineID,count(f.FlightNo),a.AirlineName,a.AddedDate from airline a left join flights f on a.AirlineID=f.AirlineID group by a.AirlineID";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				a = new Airline();
				a.setAirlineID(rs.getInt(1));
				a.setCount(rs.getInt(2));
				a.setAirlineName(rs.getString(3));
				a.setAddedDate(rs.getString(4));
				list.add(a);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean addFlight(Flights f) {
		boolean fa = false;
		try {
			String sql = "insert into flights(AirlineID,FlightNo,EconomySeats,BusinessSeats,FirstClassSeats,TotalSeats)values(?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, f.getAirlineID());
			ps.setInt(2, f.getFlightNo());
			ps.setInt(3, f.getEconomySeats());
			ps.setInt(4, f.getBusinessSeats());
			ps.setInt(5, f.getFirstClassSeats());
			ps.setInt(6, f.getTotalSeats());
			int i = ps.executeUpdate();
			if (i == 1) {
				fa = true;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fa;
	}

	@Override
	public boolean checkFlightNo(int FlightNo, int AirlineID) {
		boolean f = true;
		try {
			String sql = "select * from flights where FlightNo=? and AirlineID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, FlightNo);
			ps.setInt(2, AirlineID);
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
	public List<Flights> getFlights() {
		List<Flights> list = new ArrayList<Flights>();
		Flights f = null;
		try {
			String sql = "select f.FlightID,a.AirlineID,a.AirlineName,f.FlightNo,f.EconomySeats,f.BusinessSeats,f.FirstClassSeats,f.TotalSeats from flights f cross join airline a on f.AirlineID=a.AirlineID ";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = new Flights();
				f.setFlightID(rs.getInt(1));
				f.setAirlineID(rs.getInt(2));
				f.setAirlineName(rs.getString(3));
				f.setFlightNo(rs.getInt(4));
				f.setEconomySeats(rs.getInt(5));
				f.setBusinessSeats(rs.getInt(6));
				f.setFirstClassSeats(rs.getInt(7));
				f.setTotalSeats(rs.getInt(8));
				list.add(f);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Flights getFlightById(int FlightID) {
		Flights f = null;
		try {
			String sql = "select f.FlightID,a.AirlineID,a.AirlineName,f.FlightNo,f.EconomySeats,f.BusinessSeats,f.FirstClassSeats,f.TotalSeats from flights f cross join airline a on f.AirlineID=a.AirlineID and FlightID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, FlightID);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = new Flights();
				f.setFlightID(rs.getInt(1));
				f.setAirlineID(rs.getInt(2));
				f.setAirlineName(rs.getString(3));
				f.setFlightNo(rs.getInt(4));
				f.setEconomySeats(rs.getInt(5));
				f.setBusinessSeats(rs.getInt(6));
				f.setFirstClassSeats(rs.getInt(7));
				f.setTotalSeats(rs.getInt(8));
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public Flights getFlightById2(int FlightID, int AirlineID) {
		Flights f = null;
		try {
			String sql = "select f.FlightID,a.AirlineName,f.FlightNo,f.EconomySeats,f.BusinessSeats,f.FirstClassSeats,f.TotalSeats from flights f cross join airline a on f.AirlineID=a.AirlineID where f.FlightID=? and a.AirlineID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, FlightID);
			ps.setInt(2, AirlineID);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = new Flights();
				f.setFlightID(rs.getInt(1));
				f.setAirlineName(rs.getString(2));
				f.setFlightNo(rs.getInt(3));
				f.setEconomySeats(rs.getInt(4));
				f.setBusinessSeats(rs.getInt(5));
				f.setFirstClassSeats(rs.getInt(6));
				f.setTotalSeats(rs.getInt(7));
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean addScheduleFlight(ScheduleFlight sf) {
		boolean f = false;
		try {
			String sql = "insert into schedule_flight(FlightID,AirlineID,Source,Destination,DepartureDate,DepartureTime,ArrivalDate,ArrivalTime,EcoSeatCost,BusSeatCost,FirSeatCost,Status)values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, sf.getFlightID());
			ps.setInt(2, sf.getAirlineID());
			ps.setString(3, sf.getSource());
			ps.setString(4, sf.getDestination());
			ps.setString(5, sf.getDepartureDate());
			ps.setString(6, sf.getDepartureTime());
			ps.setString(7, sf.getArrivalDate());
			ps.setString(8, sf.getArrivalTime());
			ps.setFloat(9, sf.getEconomyCost());
			ps.setFloat(10, sf.getBusinessCost());
			ps.setFloat(11, sf.getFirstClassCost());
			ps.setString(12, sf.getStatus());

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
	public List<ScheduleFlight> getScheduleFlight() {
		List<ScheduleFlight> list = new ArrayList<ScheduleFlight>();
		ScheduleFlight sf = null;
		try {
			String sql = "select sf.ScheduleID,sf.FlightID,sf.AirlineID,a.AirlineName,f.FlightNo,sf.Source,sf.Destination,sf.DepartureDate,sf.DepartureTime,sf.ArrivalDate,sf.ArrivalTime,sf.EcoSeatCost,sf.BusSeatCost,sf.FirSeatCost,sf.Status from schedule_flight sf join flights f on sf.FlightID=f.FlightID join airline a on a.AirlineID=sf.AirlineID order by sf.Status desc";
			PreparedStatement ps = con.prepareStatement(sql);
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
				sf.setStatus(rs.getString(15));
				list.add(sf);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean deleteAirline(int id) {
		boolean f = false;
		try {
			String sql = "delete from airline where AirlineID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean updateFlight(int FlightID, int AirlineID, Flights fa) {
		boolean f = false;
		try {
			String sql = "update table flights set FlightNo=?,EconomySeats=?,BusinessSeats=?,FirstClassSeats=?,TotalSeats=? where FlightID=? and AirlineID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, fa.getFlightNo());
			ps.setInt(2, fa.getEconomySeats());
			ps.setInt(3, fa.getBusinessSeats());
			ps.setInt(4, fa.getFirstClassSeats());
			ps.setInt(5, fa.getTotalSeats());
			ps.setInt(6, FlightID);
			ps.setInt(7, AirlineID);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean deleteFlight(int FlightID, int AirlineID) {
		boolean f = false;
		try {
			String sql = "delete from flights where FlightID=? and AirlineID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, FlightID);
			ps.setInt(2, AirlineID);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public ScheduleFlight getScheduleFlightById(int ScheduleID, int FlightID, int AirlineID) {
		ScheduleFlight sf = null;
		try {
			String sql = "select sf.ScheduleID,sf.FlightID,sf.AirlineID,a.AirlineName,f.FlightNo,sf.Source,sf.Destination,sf.DepartureDate,sf.DepartureTime,sf.ArrivalDate,sf.ArrivalTime,sf.EcoSeatCost,sf.BusSeatCost,sf.FirSeatCost from schedule_flight sf join flights f on sf.FlightID=f.FlightID join airline a on a.AirlineID=sf.AirlineID where sf.ScheduleID=? and sf.FlightID=? and sf.AirlineID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, ScheduleID);
			ps.setInt(2, FlightID);
			ps.setInt(3, AirlineID);
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
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sf;
	}

	@Override
	public boolean updateSchFlight(int ScheduleID, int AirlineID, int FlightID, ScheduleFlight sf) {
		boolean f = false;
		try {
			String sql = "update schedule_flight set Source=?,Destination=?,DepartureDate=?,DepartureTime=?,ArrivalDate=?,ArrivalTime=?,EcoSeatCost=?,BusSeatCost=?,FirSeatCost=? where ScheduleID=? and FlightID=? and AirlineID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, sf.getSource());
			ps.setString(2, sf.getDestination());
			ps.setString(3, sf.getDepartureDate());
			ps.setString(4, sf.getDepartureTime());
			ps.setString(5, sf.getArrivalDate());
			ps.setString(6, sf.getArrivalTime());
			ps.setFloat(7, sf.getEconomyCost());
			ps.setFloat(8, sf.getBusinessCost());
			ps.setFloat(9, sf.getFirstClassCost());
			ps.setInt(10, ScheduleID);
			ps.setInt(11, FlightID);
			ps.setInt(12, AirlineID);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean deleteSchFlight(int ScheduleID, int AirlineID, int FlightID) {
		boolean f = false;
		try {
			String sql = "update schedule_flight set Status='Cancelled' where ScheduleID=? and FlightID=? and AirlineID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, ScheduleID);
			ps.setInt(2, AirlineID);
			ps.setInt(3, FlightID);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public Data getAvailAir() {
		Data d = null;
		try {
			String sql = "select count(distinct(AirlineID))from airline";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setAvailAirline(rs.getInt(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}

	public Data getLastAirline() {
		Data d = null;
		try {
			String sql = "select AirlineName from airline order by AirlineID desc limit 1";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setLastAirline(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}

	public Data getAvailFli() {
		Data d = null;
		try {
			String sql = "select count(distinct(FlightID)) from flights";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setAvailFlight(rs.getInt(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}

	public Data getLastFli() {
		Data d = null;
		try {
			String sql = "select FlightNo from flights order by FlightID desc limit 1";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setLastFlight(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}

	public Data getTotBooking() {
		Data d = null;
		try {
			String sql = "select count(distinct(PassengerID)) from passengers";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setTotBooking(rs.getInt(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}

	public Data getPtBooking() {
		Data d = null;
		try {
			String sql = "select PassengerID from passengers order by PassengerID desc limit 1";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setPartBooking(rs.getInt(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}

	public Data getTotalIncome() {
		Data d = null;
		try {
			String sql = "select sum(TicketPrice) from passengers";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setTotIncome(rs.getFloat(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}

	public Data getTodayIncome() {
		Data d = null;
		try {
			String sql = "SELECT sum(p.TicketPrice) FROM passengers p cross join schedule_flight sf on p.FlightID=sf.FlightID where sf.DepartureDate = current_date();";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setTodIncome(rs.getFloat(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}

	public List<Data> getDataForPie() {
		List<Data> list = new ArrayList<Data>();
		Data d = null;
		try {
			String sql = "select a.AirlineName,count(f.FlightNo) from airline a left join flights f on a.AirlineID=f.AirlineID group by a.AirlineID";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setLastAirline(rs.getString(1));
				d.setAvailAirline(rs.getInt(2));
				list.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Data> getDataForBar() {
		List<Data> list = new ArrayList<Data>();
		Data d = null;
		try {
			String sql = "select Status,count(Status) from schedule_flight group by Status";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setStatus(rs.getString(1));
				d.setCount(rs.getInt(2));
				list.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Passengers> getPassengerById(int FlightID, int FlightNO) {
		List<Passengers> list = new ArrayList<Passengers>();
		Passengers pa = null;
		try {
			String sql = "select * from passengers where FlightID=? and FlightNo=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, FlightID);
			ps.setInt(2, FlightNO);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				pa = new Passengers();
				pa.setPassengerID(rs.getInt(1));
				pa.setFlightID(rs.getInt(2));
				pa.setFlightNo(rs.getInt(3));
				pa.setName(rs.getString(4));
				pa.setMobileNo(rs.getString(5));
				pa.setDOB(rs.getString(6));
				pa.setGender(rs.getString(7));
				pa.setPRN(rs.getString(8));
				pa.setSeatNo(rs.getString(9));
				pa.setTicketType(rs.getString(10));
				pa.setTicketPrice(rs.getFloat(11));
				list.add(pa);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Passengers> getAllPassengers() {
		List<Passengers> list = new ArrayList<Passengers>();
		Passengers pa = null;
		try {
			String sql = "SELECT pa.PassengerID,pa.FlightID,pa.FlightNo,pa.Name,pa.MobileNo,pa.DOB,pa.Gender,pa.PRN,pa.SeatNo,pa.TicketType,pa.TicketPrice,sf.Source,sf.Destination FROM passengers pa join schedule_flight sf on pa.FlightID=sf.FlightID;";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				pa = new Passengers();
				pa.setPassengerID(rs.getInt(1));
				pa.setFlightID(rs.getInt(2));
				pa.setFlightNo(rs.getInt(3));
				pa.setName(rs.getString(4));
				pa.setMobileNo(rs.getString(5));
				pa.setDOB(rs.getString(6));
				pa.setGender(rs.getString(7));
				pa.setPRN(rs.getString(8));
				pa.setSeatNo(rs.getString(9));
				pa.setTicketType(rs.getString(10));
				pa.setTicketPrice(rs.getFloat(11));
				pa.setSrc(rs.getString(12));
				pa.setDest(rs.getString(13));
				list.add(pa);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Data getPassengerPerFlight(int FlightID, int FlightNo) {
		Data d = null;
		try {
			String sql = "select count(PassengerID) from passengers where FlightID=? and FlightNo=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, FlightID);
			ps.setInt(2, FlightNo);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Data();
				d.setCount(rs.getInt(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}
}
