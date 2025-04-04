package com.entity;

import java.sql.Timestamp;
import java.time.LocalDateTime;

public class ScheduleFlight {
	private int ScheduleID;
	private int AirlineID;
	private String AirlineName;
	private int FlightID;
	private int FlightNo;
	private String Source;
	private String Destination;
	private String DepartureDate;
	private String ArrivalDate;
	private String DepartureTime;
	private String ArrivalTime;
	private float EconomyCost;
	private float BusinessCost;
	private float FirstClassCost;
	private String Status;

	public ScheduleFlight() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ScheduleFlight(int scheduleID, int airlineID, String airlineName, int flightID, int flightNo, String source,
			String destination, String departureDate, String arrivalDate, String departureTime, String arrivalTime,
			float economyCost, float businessCost, float firstClassCost, String status) {
		super();
		ScheduleID = scheduleID;
		AirlineID = airlineID;
		AirlineName = airlineName;
		FlightID = flightID;
		FlightNo = flightNo;
		Source = source;
		Destination = destination;
		DepartureDate = departureDate;
		ArrivalDate = arrivalDate;
		DepartureTime = departureTime;
		ArrivalTime = arrivalTime;
		EconomyCost = economyCost;
		BusinessCost = businessCost;
		FirstClassCost = firstClassCost;
		Status = status;
	}

	public int getScheduleID() {
		return ScheduleID;
	}

	public void setScheduleID(int scheduleID) {
		ScheduleID = scheduleID;
	}

	public int getAirlineID() {
		return AirlineID;
	}

	public void setAirlineID(int airlineID) {
		AirlineID = airlineID;
	}

	public String getAirlineName() {
		return AirlineName;
	}

	public void setAirlineName(String airlineName) {
		AirlineName = airlineName;
	}

	public int getFlightID() {
		return FlightID;
	}

	public void setFlightID(int flightID) {
		FlightID = flightID;
	}

	public int getFlightNo() {
		return FlightNo;
	}

	public void setFlightNo(int flightNo) {
		FlightNo = flightNo;
	}

	public String getSource() {
		return Source;
	}

	public void setSource(String source) {
		Source = source;
	}

	public String getDestination() {
		return Destination;
	}

	public void setDestination(String destination) {
		Destination = destination;
	}

	public String getDepartureDate() {
		return DepartureDate;
	}

	public void setDepartureDate(String departureDate) {
		DepartureDate = departureDate;
	}

	public String getArrivalDate() {
		return ArrivalDate;
	}

	public void setArrivalDate(String arrivalDate) {
		ArrivalDate = arrivalDate;
	}

	public String getDepartureTime() {
		return DepartureTime;
	}

	public void setDepartureTime(String departureTime) {
		DepartureTime = departureTime;
	}

	public String getArrivalTime() {
		return ArrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		ArrivalTime = arrivalTime;
	}

	public float getEconomyCost() {
		return EconomyCost;
	}

	public void setEconomyCost(float economyCost) {
		EconomyCost = economyCost;
	}

	public float getBusinessCost() {
		return BusinessCost;
	}

	public void setBusinessCost(float businessCost) {
		BusinessCost = businessCost;
	}

	public float getFirstClassCost() {
		return FirstClassCost;
	}

	public void setFirstClassCost(float firstClassCost) {
		FirstClassCost = firstClassCost;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	@Override
	public String toString() {
		return "ScheduleFlight [ScheduleID=" + ScheduleID + ", AirlineID=" + AirlineID + ", AirlineName=" + AirlineName
				+ ", FlightID=" + FlightID + ", FlightNo=" + FlightNo + ", Source=" + Source + ", Destination="
				+ Destination + ", DepartureDate=" + DepartureDate + ", ArrivalDate=" + ArrivalDate + ", DepartureTime="
				+ DepartureTime + ", ArrivalTime=" + ArrivalTime + ", EconomyCost=" + EconomyCost + ", BusinessCost="
				+ BusinessCost + ", FirstClassCost=" + FirstClassCost + ", Status=" + Status + "]";
	}

}
