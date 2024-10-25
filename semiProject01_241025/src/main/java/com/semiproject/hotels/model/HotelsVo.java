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
	int hotel_id,loc_id,star_rating,standard_r,deluxe_r,premium_r,standard_price,deluxe_price,premium_price,amenity_id;
	String hotel_name,contact_number,homepage_url,address,image_url,amenities,loc_name,user_name;
}
