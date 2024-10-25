package com.hotels.api01.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface UsersDao {

	@Select("SELECT NAME,PASSWORD FROM users WHERE email=#{String}")
	UsersVo searchEmail(String email);

	@Insert("INSERT INTO users (NAME,email,PASSWORD,address,birth_date) values (#{name},#{email},#{password},#{address},#{birth_date})")
	int addUser(UsersVo bean);
	
	@Update("UPDATE users SET PASSWORD=#{password} WHERE NAME=#{name};")
	boolean editPassword(UsersVo bean);
}