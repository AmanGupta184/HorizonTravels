package com.DAO;

import java.util.List;

import com.entity.*;

public interface AdminDAO {
	public boolean addAirline(Airline a);

	public boolean checkName(String name);

	public List<Airline> getAirline();

	public boolean addFlight(Flights f);

	public boolean checkFlightNo(int FlightNo, int AirlineID);

	public List<Flights> getFlights();

	public Flights getFlightById(int FlightID);

	public Flights getFlightById2(int FlightID, int AirlineID);

	public boolean addScheduleFlight(ScheduleFlight sf);

	public List<ScheduleFlight> getScheduleFlight();

	public boolean deleteAirline(int id);

	public boolean updateFlight(int FlightID, int AirlineID, Flights fa);

	public boolean deleteFlight(int FlightID, int AirlineID);

	public ScheduleFlight getScheduleFlightById(int ScheduleID, int FlightID, int AirlineID);

	public boolean updateSchFlight(int ScheduleID, int AirlineID, int FlightID, ScheduleFlight sf);

	public boolean deleteSchFlight(int ScheduleID, int AirlineID, int FlightID);
	
	public List<Passengers> getPassengerById(int FlightID,int FlightNO);
	
	public List<Passengers> getAllPassengers();
}
