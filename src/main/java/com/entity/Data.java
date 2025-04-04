package com.entity;

public class Data {
	private int AvailAirline;
	private String LastAirline;
	private int AvailFlight;
	private String LastFlight;
	private int TotBooking;
	private int PartBooking;
	private Float TotIncome;
	private Float TodIncome;
	private String status;
	private int count;

	public Data() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Data(int availAirline, String lastAirline, int availFlight, String lastFlight, int totBooking,
			int partBooking, Float totIncome, Float todIncome, String status, int count) {
		super();
		AvailAirline = availAirline;
		LastAirline = lastAirline;
		AvailFlight = availFlight;
		LastFlight = lastFlight;
		TotBooking = totBooking;
		PartBooking = partBooking;
		TotIncome = totIncome;
		TodIncome = todIncome;
		this.status = status;
		this.count = count;
	}

	public int getAvailAirline() {
		return AvailAirline;
	}

	public void setAvailAirline(int availAirline) {
		AvailAirline = availAirline;
	}

	public String getLastAirline() {
		return LastAirline;
	}

	public void setLastAirline(String lastAirline) {
		LastAirline = lastAirline;
	}

	public int getAvailFlight() {
		return AvailFlight;
	}

	public void setAvailFlight(int availFlight) {
		AvailFlight = availFlight;
	}

	public String getLastFlight() {
		return LastFlight;
	}

	public void setLastFlight(String lastFlight) {
		LastFlight = lastFlight;
	}

	public int getTotBooking() {
		return TotBooking;
	}

	public void setTotBooking(int totBooking) {
		TotBooking = totBooking;
	}

	public int getPartBooking() {
		return PartBooking;
	}

	public void setPartBooking(int partBooking) {
		PartBooking = partBooking;
	}

	public Float getTotIncome() {
		return TotIncome;
	}

	public void setTotIncome(Float totIncome) {
		TotIncome = totIncome;
	}

	public Float getTodIncome() {
		return TodIncome;
	}

	public void setTodIncome(Float todIncome) {
		TodIncome = todIncome;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Data [AvailAirline=" + AvailAirline + ", LastAirline=" + LastAirline + ", AvailFlight=" + AvailFlight
				+ ", LastFlight=" + LastFlight + ", TotBooking=" + TotBooking + ", PartBooking=" + PartBooking
				+ ", TotIncome=" + TotIncome + ", TodIncome=" + TodIncome + ", status=" + status + ", count=" + count
				+ "]";
	}

}
