package com.entity;

public class Flights {
	private int FlightID;
	private int AirlineID;
	private String AirlineName;
	private int FlightNo;
	private int EconomySeats;
	private int BusinessSeats;
	private int FirstClassSeats;
	private int TotalSeats;

	public Flights() {
		super();
	}

	public Flights(int flightID, int airlineID, String airlineName, int flightNo, int economySeats, int businessSeats,
			int firstClassSeats, int totalSeats) {
		super();
		FlightID = flightID;
		AirlineID = airlineID;
		AirlineName = airlineName;
		FlightNo = flightNo;
		EconomySeats = economySeats;
		BusinessSeats = businessSeats;
		FirstClassSeats = firstClassSeats;
		TotalSeats = totalSeats;
	}

	public int getFlightID() {
		return FlightID;
	}

	public void setFlightID(int flightID) {
		FlightID = flightID;
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

	public int getFlightNo() {
		return FlightNo;
	}

	public void setFlightNo(int flightNo) {
		FlightNo = flightNo;
	}

	public int getEconomySeats() {
		return EconomySeats;
	}

	public void setEconomySeats(int economySeats) {
		EconomySeats = economySeats;
	}

	public int getBusinessSeats() {
		return BusinessSeats;
	}

	public void setBusinessSeats(int businessSeats) {
		BusinessSeats = businessSeats;
	}

	public int getFirstClassSeats() {
		return FirstClassSeats;
	}

	public void setFirstClassSeats(int firstClassSeats) {
		FirstClassSeats = firstClassSeats;
	}

	public int getTotalSeats() {
		return TotalSeats;
	}

	public void setTotalSeats(int totalSeats) {
		TotalSeats = totalSeats;
	}

	@Override
	public String toString() {
		return "Flights [FlightID=" + FlightID + ", AirlineID=" + AirlineID + ", AirlineName=" + AirlineName
				+ ", FlightNo=" + FlightNo + ", EconomySeats=" + EconomySeats + ", BusinessSeats=" + BusinessSeats
				+ ", FirstClassSeats=" + FirstClassSeats + ", TotalSeats=" + TotalSeats + "]";
	}

}
