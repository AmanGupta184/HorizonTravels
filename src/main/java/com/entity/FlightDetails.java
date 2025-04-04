package com.entity;

public class FlightDetails {
	private String FlightID;
	private String FlightName;
	private String Source;
	private String Destination;
	private String DeptTime;
	private String ArrivalTime;
	private String Amount;

	public FlightDetails() {
		super();
	}

	public FlightDetails(String flightID, String flightName, String source, String destination, String deptTime,
			String arrivalTime, String amount) {
		super();
		FlightID = flightID;
		FlightName = flightName;
		Source = source;
		Destination = destination;
		DeptTime = deptTime;
		ArrivalTime = arrivalTime;
		Amount = amount;
	}

	public String getFlightID() {
		return FlightID;
	}

	public void setFlightID(String flightID) {
		FlightID = flightID;
	}

	public String getFlightName() {
		return FlightName;
	}

	public void setFlightName(String flightName) {
		FlightName = flightName;
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

	public String getDeptTime() {
		return DeptTime;
	}

	public void setDeptTime(String deptTime) {
		DeptTime = deptTime;
	}

	public String getArrivalTime() {
		return ArrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		ArrivalTime = arrivalTime;
	}

	public String getAmount() {
		return Amount;
	}

	public void setAmount(String amount) {
		Amount = amount;
	}

	@Override
	public String toString() {
		return "FlightDetails [FlightID=" + FlightID + ", FlightName=" + FlightName + ", Source=" + Source
				+ ", Destination=" + Destination + ", DeptTime=" + DeptTime + ", ArrivalTime=" + ArrivalTime
				+ ", Amount=" + Amount + "]";
	}

}
