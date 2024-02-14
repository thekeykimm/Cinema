package com.icia.cma.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.cma.dto.MemberDTO;
import com.icia.cma.dto.pageDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public String idCheck(String mId) {
		return sql.selectOne("Member.idCheck", mId);
	}

	public int mJoin(MemberDTO member) {
		System.out.println("[3] service → dao : " + member);
		return sql.insert("Member.mJoin", member);
	}

	public String mLogin(String mId) {
		System.out.println("[3] service → dao : " + mId);
		return sql.selectOne("Member.mLogin", mId);
	}

	public MemberDTO mView(String mId) {
		System.out.println("[3] service → dao : " + mId);
		return sql.selectOne("Member.mView", mId);
	}

	public int mCtn() {
		return sql.selectOne("Member.mCtn");
	}

	public List<MemberDTO> mList(pageDTO paging) {
		System.out.println("[3] service → dao : " + paging);
		return sql.selectList("Member.mList", paging);
	}

}
