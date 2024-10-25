package com.hotels.api01.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface HotelsDao {

	@Select("SELECT H.hotel_id, H.hotel_name, L.loc_name, H.star_rating, H.price_per_night, H.room_count, H.contact_number,\n" + 
			"       H.address, GROUP_CONCAT(A.amenity_name SEPARATOR ', ') AS amenities, H.image_url, H.homepage_url\n" + 
			"FROM Hotels H\n" + 
			"JOIN HotelAmenities HA ON H.hotel_id = HA.hotel_id\n" + 
			"JOIN Amenities A ON HA.amenity_id = A.amenity_id\n" + 
			"JOIN Location L ON H.loc_id = L.loc_id\n" + 
			"GROUP BY H.hotel_id, H.hotel_name, L.loc_name, H.star_rating, H.price_per_night, H.room_count, H.contact_number, H.address, H.image_url, H.homepage_url;")
	List<HotelsVo> pullList();

	@Select("SELECT \n" + 
			"    H.hotel_id, \n" + 
			"    H.hotel_name, \n" + 
			"    L.loc_name,   \n" + 
			"    H.contact_number, \n" + 
			"    H.address, \n" + 
			"    GROUP_CONCAT(A.amenity_name SEPARATOR ', ') AS amenities, \n" + 
			"    H.image_url, \n" + 
			"    H.homepage_url,\n" + 
			"    f.user_name            \n" + 
			"FROM Hotels H\n" + 
			"JOIN HotelAmenities HA ON H.hotel_id = HA.hotel_id\n" + 
			"JOIN Amenities A ON HA.amenity_id = A.amenity_id\n" + 
			"JOIN Location L ON H.loc_id = L.loc_id\n" + 
			"LEFT JOIN favorites f ON H.hotel_id = f.hotel_id  \n" + 
			"LEFT JOIN users u ON f.user_name = u.name WHERE L.loc_name=#{String}\n" + 
			"GROUP BY H.hotel_id,\n" + 
			"         f.user_name,\n" + 
			"         H.hotel_name, \n" + 
			"         L.loc_name, \n" + 
			"         H.contact_number, \n" + 
			"         H.address, \n" + 
			"         H.image_url, \n" + 
			"         H.homepage_url")
	List<HotelsVo> searchList(String loc);
	
	@Select("SELECT * FROM (\n" + 
			"SELECT \n" + 
			"    H.hotel_id, \n" + 
			"    H.hotel_name, \n" + 
			"    L.loc_name, \n" + 
			"    H.star_rating, \n" + 
			"    H.standard_price,           \n" + 
			"    H.deluxe_price,             \n" + 
			"    H.premium_price,            \n" + 
			"    H.standard_r AS standard_room_count,  \n" + 
			"    H.deluxe_r AS deluxe_room_count,      \n" + 
			"    H.premium_r AS premium_room_count,     \n" + 
			"    H.contact_number, \n" + 
			"    H.address, \n" + 
			"    GROUP_CONCAT(A.amenity_name SEPARATOR ', ') AS amenities, \n" + 
			"    H.image_url, \n" + 
			"    H.homepage_url,\n" + 
			"    f.user_name            \n" + 
			"FROM Hotels H\n" + 
			"JOIN HotelAmenities HA ON H.hotel_id = HA.hotel_id\n" + 
			"JOIN Amenities A ON HA.amenity_id = A.amenity_id\n" + 
			"JOIN Location L ON H.loc_id = L.loc_id\n" + 
			"LEFT JOIN favorites f ON H.hotel_id = f.hotel_id  \n" + 
			"LEFT JOIN users u ON f.user_name = u.name WHERE H.hotel_id=#{arg0}\n" + 
			"GROUP BY H.hotel_id,\n" + 
			"         f.user_name,\n" + 
			"         H.hotel_name, \n" + 
			"         L.loc_name, \n" + 
			"         H.star_rating, \n" + 
			"         H.standard_price, \n" + 
			"         H.deluxe_price, \n" + 
			"         H.premium_price, \n" + 
			"         H.standard_r, \n" + 
			"         H.deluxe_r, \n" + 
			"         H.premium_r, \n" + 
			"         H.contact_number, \n" + 
			"         H.address, \n" + 
			"         H.image_url, \n" + 
			"         H.homepage_url) SE \n" + 
			"			WHERE SE.user_name=#{arg1} or SE.user_name IS null\n" + 
			"			;")
	HotelsVo searchHotel(int hotel_id,String user_name);
	
	@Select("SELECT H.hotel_id, H.hotel_name, L.loc_name, d.d241001\n" + 
			"FROM Hotels H\n" + 
			"JOIN date d ON h.hotel_id = d.hotel_id \n" + 
			"JOIN Location L ON H.loc_id = L.loc_id WHERE L.loc_name=\"¼­¿ï\";")
	List<HotelsVo> searchRooms();
	
}