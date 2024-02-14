package com.icia.cma.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.cma.dto.MovieDTO;
import com.icia.cma.dto.TicketingDTO;
import com.icia.cma.dto.pageDTO;

@Repository
public class TicketingDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public List<MovieDTO> vList() {
		return sql.selectList("Ticketing.vList");
	}

	public List<TicketingDTO> cList(String movTitle) {
		return sql.selectList("Ticketing.cList", movTitle);
	}

	public List<TicketingDTO> dList(TicketingDTO ticketing) {
		return sql.selectList("Ticketing.dList", ticketing);
	}

	public List<TicketingDTO> tList(TicketingDTO ticketing) {
		return sql.selectList("Ticketing.tList", ticketing);
	}

	public int tSeat(TicketingDTO ticketing) {
		System.out.println("[3] service → dao :" + ticketing);
		return sql.insert("Ticketing.tSeat", ticketing);
	}
	
	public List<TicketingDTO> tcList(pageDTO paging) {
		System.out.println("[3] service -> dao : " + paging);
		return sql.selectList("Ticketing", paging);
	}

	public int tCtn() {
		return sql.selectOne("Ticketing.tCtn");
	}

}
