package com.entity;

import java.util.Date;

public class Airline {
	private int AirlineID;
	private int Count;
	private String AirlineName;
	private String AddedDate;

	public Airline() {
		super();
	}

	public Airline(int airlineID, int count, String airlineName, String addedDate) {
		super();
		AirlineID = airlineID;
		Count = count;
		AirlineName = airlineName;
		AddedDate = addedDate;
	}

	public int getAirlineID() {
		return AirlineID;
	}

	public void setAirlineID(int airlineID) {
		AirlineID = airlineID;
	}

	public int getCount() {
		return Count;
	}

	public void setCount(int count) {
		Count = count;
	}

	public String getAirlineName() {
		return AirlineName;
	}

	public void setAirlineName(String airlineName) {
		AirlineName = airlineName;
	}

	public String getAddedDate() {
		return AddedDate;
	}

	public void setAddedDate(String addedDate) {
		AddedDate = addedDate;
	}

	@Override
	public String toString() {
		return "Airline [AirlineID=" + AirlineID + ", Count=" + Count + ", AirlineName=" + AirlineName + ", AddedDate="
				+ AddedDate + "]";
	}

}
