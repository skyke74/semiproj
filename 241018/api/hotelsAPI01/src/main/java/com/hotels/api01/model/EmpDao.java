package com.hotels.api01.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface EmpDao {

	@Select("SELECT d.dname,ename FROM emp E JOIN dept d ON e.deptno=d.deptno")
	List<EmpVo> pullList();
}