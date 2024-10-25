package com.semiproject.hotels.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ResvVo {
	int reservation_id,price;
	String guest_name,hotel_name,room_info,image_url;
	Date check_in,check_out;
}
