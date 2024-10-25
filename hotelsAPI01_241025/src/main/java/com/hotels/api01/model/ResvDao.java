package com.hotels.api01.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface ResvDao {

	@Select("SELECT R.check_in,R.check_out,R.hotel_name,R.room_info,R.price,H.image_url FROM room_reservation R\n" + 
			"JOIN hotels H ON H.hotel_name=R.hotel_name WHERE guest_name=#{String}")
	List<ResvVo> pullUserList(String user);
	
	@Insert("INSERT INTO room_reservation \n" + 
			"(guest_name,check_in,check_out,hotel_name,room_info,price) VALUES \n" + 
			"(#{guest_name},#{check_in},#{check_out},#{hotel_name},#{room_info},#{price})")
	int addResv(ResvVo bean);

}