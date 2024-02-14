package com.icia.cma.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.cma.dto.MovieDTO;
import com.icia.cma.dto.ScheduleDTO;
import com.icia.cma.dto.pageDTO;

@Repository
public class ScheduleDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public List<MovieDTO> mvList() {
		System.out.println("[3] service → dao :");
		return sql.selectList("Schedule.mvList");
	}

	public int hRegist(ScheduleDTO schedule) {
		System.out.println("[3] service → dao :" + schedule);
		return sql.insert("Schedule.hRegist", schedule);
	}

	public int hCtn() {
		return sql.selectOne("Schedule.hCtn");
	}

	public List<ScheduleDTO> hList(pageDTO paging) {
		System.out.println("[3] service -> dao : " + paging);
		return sql.selectList("Schedule.hList", paging);
	}

}
