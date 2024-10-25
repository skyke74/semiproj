package com.hotels.api01.model;

import java.sql.Date;
import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EmpVo {
	private int empno,pay,deptno;
	private String ename,dname;
	private Date hiredate;
}
