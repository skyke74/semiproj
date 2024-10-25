package com.hotels.api01.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface FavDao {

	@Select("SELECT F.user_name,H.hotel_name,F.hotel_id,H.image_url FROM favorites f\n" + 
			"JOIN hotels H ON H.hotel_id=F.hotel_id WHERE user_name=#{String}")
	List<FavVo> pullUserList(String user);
	
	@Insert("INSERT INTO favorites (user_name,hotel_id) VALUES\n" + 
			"	(#{arg0},#{arg1})")
	int addFav(String user_id,int hotel_id);
	
	@Select("SELECT * FROM fav WHERE user_name=#{arg0} AND hotel_id=#{arg1}")
	List<FavVo> searchFav(String user_name,int hotel_id);
	
	@Delete("DELETE FROM favorites WHERE user_name=#{arg0} AND hotel_id=#{arg1}")
	boolean rmFav(String user_name,int hotel_id);

}