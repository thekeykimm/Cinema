package com.icia.cma.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.cma.dto.ScreenDTO;
import com.icia.cma.dto.pageDTO;

@Repository
public class ScreenDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int sRegist(ScreenDTO screen) {
		System.out.println("[3] service -> dao : " + screen);
		return sql.insert("Screen.sRegist", screen);
	}

	public int sCtn() {
		return sql.selectOne("Screen.sCtn");
	}

	public List<ScreenDTO> sList(pageDTO paging) {
		System.out.println("[3] service -> dao : " + paging);
		return sql.selectList("Screen.sList", paging);
	}
}
