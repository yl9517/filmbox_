package com.film.service;

import com.film.dto.UserDTO;

public interface UserService {

	public void insertUser(UserDTO dto);
	
	public void insertFilmUser(UserDTO dto);
	
	public int idcheck(String member_id);

}
