package com.icia.cma.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.cma.dto.MovieDTO;
import com.icia.cma.dto.pageDTO;

@Repository
public class MovieDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public int eWrite(MovieDTO movie) {
		System.out.println("[3] service → dao : " + movie);
		return sql.insert("Movie.eWrite",movie);
	}

	public int eCtn() {
		System.out.println("[3] service -> dao : ");
		return sql.selectOne("Movie.eCtn");

	}

	public List<MovieDTO> eList(pageDTO paging) {
		System.out.println("[3] service → dao : " + paging);
		return sql.selectList("Movie.eList", paging);
	}

	public MovieDTO eView(int movNum) {
		System.out.println("[3] service -> dao : " + movNum);
		return sql.selectOne("Movie.eView", movNum);
	}
}
