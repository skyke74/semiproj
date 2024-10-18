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

	@Select("SELECT H.hotel_id, H.hotel_name, L.loc_name, H.star_rating, H.price_per_night, H.room_count, H.contact_number,\n" + 
			"       H.address, GROUP_CONCAT(A.amenity_name SEPARATOR ', ') AS amenities, H.image_url, H.homepage_url FROM hotels H  \n" + 
			"JOIN HotelAmenities HA ON H.hotel_id = HA.hotel_id\n" + 
			"JOIN Amenities A ON HA.amenity_id = A.amenity_id\n" + 
			"JOIN Location L ON H.loc_id = L.loc_id WHERE L.loc_name=#{String}\n" + 
			"GROUP BY H.hotel_id, H.hotel_name, L.loc_name, H.star_rating, H.price_per_night, H.room_count, H.contact_number, H.address, H.image_url, H.homepage_url;")
	List<HotelsVo> searchList(String loc);
	
}