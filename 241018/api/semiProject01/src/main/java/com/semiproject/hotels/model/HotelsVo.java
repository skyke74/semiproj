package com.semiproject.hotels.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class HotelsVo {
	int hotel_id,loc_id,star_rating,price_per_night,room_count,amenity_id;
	String hotel_name,contact_number,homepage_url,address,image_url,amenities,loc_name;
}
