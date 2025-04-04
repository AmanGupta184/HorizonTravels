package com.DAO;

import java.util.List;

import com.entity.*;

public interface UserDAO {
	public boolean register(User us);

	public boolean checkUser(String email);

	public User login(String email, String password);
	
	public List<ScheduleFlight> getFlightBySearch(String from,String to,String date);
	
	public ScheduleFlight getFlightById(int id);
}
