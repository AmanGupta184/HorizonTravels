package com.entity;

public class Passengers {
	private int PassengerID;
	private int FlightID;
	private int FlightNo;
	private String Name;
	private String MobileNo;
	private String DOB;
	private String Gender;
	private String PRN;
	private String SeatNo;
	private String TicketType;
	private Float TicketPrice;
	private String Src;
	private String Dest;

	public Passengers() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Passengers(int passengerID, int flightID, int flightNo, String name, String mobileNo, String dOB,
			String gender, String pRN, String seatNo, String ticketType, Float ticketPrice, String src, String dest) {
		super();
		PassengerID = passengerID;
		FlightID = flightID;
		FlightNo = flightNo;
		Name = name;
		MobileNo = mobileNo;
		DOB = dOB;
		Gender = gender;
		PRN = pRN;
		SeatNo = seatNo;
		TicketType = ticketType;
		TicketPrice = ticketPrice;
		Src = src;
		Dest = dest;
	}

	public int getPassengerID() {
		return PassengerID;
	}

	public void setPassengerID(int passengerID) {
		PassengerID = passengerID;
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

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getMobileNo() {
		return MobileNo;
	}

	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}

	public String getDOB() {
		return DOB;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getPRN() {
		return PRN;
	}

	public void setPRN(String pRN) {
		PRN = pRN;
	}

	public String getSeatNo() {
		return SeatNo;
	}

	public void setSeatNo(String seatNo) {
		SeatNo = seatNo;
	}

	public String getTicketType() {
		return TicketType;
	}

	public void setTicketType(String ticketType) {
		TicketType = ticketType;
	}

	public Float getTicketPrice() {
		return TicketPrice;
	}

	public void setTicketPrice(Float ticketPrice) {
		TicketPrice = ticketPrice;
	}

	public String getSrc() {
		return Src;
	}

	public void setSrc(String src) {
		Src = src;
	}

	public String getDest() {
		return Dest;
	}

	public void setDest(String dest) {
		Dest = dest;
	}

	@Override
	public String toString() {
		return "Passengers [PassengerID=" + PassengerID + ", FlightID=" + FlightID + ", FlightNo=" + FlightNo
				+ ", Name=" + Name + ", MobileNo=" + MobileNo + ", DOB=" + DOB + ", Gender=" + Gender + ", PRN=" + PRN
				+ ", SeatNo=" + SeatNo + ", TicketType=" + TicketType + ", TicketPrice=" + TicketPrice + ", Src=" + Src
				+ ", Dest=" + Dest + "]";
	}
}
