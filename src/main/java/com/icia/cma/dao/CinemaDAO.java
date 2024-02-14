package com.icia.cma.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.cma.dto.CinemaDTO;
import com.icia.cma.dto.pageDTO;

@Repository
public class CinemaDAO {
	
	@Autowired 
	private SqlSessionTemplate sql;

//	public int cDelete(int cinNum) {
//		System.out.println("[3] service -> dao : " + cinNum);
//		return sql.delete("Cinema.cDelete", cinNum);
//	}
//
//	public int cModify(CinemaDTO cinema) {
//		System.out.println("[3] service -> dao : " + cinema);
//		return sql.update("Cinema.cModify", cinema);
//	}
//
//	public CinemaDTO cView(int cinNum) {
//		System.out.println("[3] service -> dao : " + cinNum);
//		return sql.selectOne("Cinema.cView", cinNum);
//	}

	public int cRegist(CinemaDTO cinema) {
		System.out.println("[3] service -> dao : " +  cinema);
		return sql.insert("Cinema.cRegist", cinema);
	}

	public int cCtn() {
		return sql.selectOne("Cinema.cCtn");
	}

	public List<CinemaDTO> cList(pageDTO paging) {
		System.out.println("[3] service -> dao : " + paging);
		return sql.selectList("Cinema.cList", paging);
	}

	public List<CinemaDTO> cineList() {
		System.out.println("3");
		return sql.selectList("Cinema.cineList");
	}

	
}
