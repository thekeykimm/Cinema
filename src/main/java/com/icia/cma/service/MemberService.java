package com.icia.cma.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.cma.dao.MemberDAO;
import com.icia.cma.dto.MemberDTO;
import com.icia.cma.dto.pageDTO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO mdao;

	@Autowired
	private BCryptPasswordEncoder pwEnc;

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;

	public String idCheck(String mId) {
		String result = null;

		String checkId = mdao.idCheck(mId);

		if (checkId == null) {
			// 아이디 사용 가능
			result = "OK";
		} else {
			// 이미 사용중인 아이디
			result = "NO";
		}

		return result;
	}

	public ModelAndView mJoin(MemberDTO member) {
		System.out.println("[2] controller → service : " + member);

		mav = new ModelAndView();

		//////////////////////////////////////////////////////////////

		// (1) 비밀번호 암호화
		member.setMPw(pwEnc.encode(member.getMPw()));
		// member.getMPw() : 입력한 비밀번호
		// pwEnc.encode(member.getMPw()) : 입력한 비밀번호를 암호화
		// member.setMPw(pwEnc.encode(member.getMPw())) : 암호화 한 비밀번호를 member객체에 저장

		// (2) 주소 처리
		// (22223) 인천 미추홀구 매소홀로488번길 6-32, 태승빌딩 4층
		String mAddr = "(" + member.getAddr1() + ") " + member.getAddr2() + ", " + member.getAddr3();

		member.setMAddr(mAddr);

		// (3) 파일 업로드
		// profile 폴더에 사진 업로드!

		// D:\icia\Spring_Workspace\MEMBOARD\src\main\webapp\resources\profile\
		String savePath = "C:\\Users\\kr357\\Desktop\\My\\Spring Workspace\\Cinema\\src\\main\\webapp\\resources\\profile\\";
		MultipartFile mProfile = member.getMProfile();

		if (!mProfile.isEmpty()) {
			String uuid = UUID.randomUUID().toString().substring(0, 8);
			String fileName = mProfile.getOriginalFilename();
			String mProfileName = uuid + "_" + fileName;
			member.setMProfileName(mProfileName);

			try {
				mProfile.transferTo(new File(savePath + mProfileName));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}

		//////////////////////////////////////////////////////////////

		int result = mdao.mJoin(member);
		System.out.println("[4] dao → service : " + result);

		if (result > 0) {
			// 회원가입 성공시 로그인 페이지로 이동
			mav.setViewName("index");
		} else {
			// 회원가입 실패시 회원가입 페이지로 이동
			mav.setViewName("member/mJoin");
		}

		return mav;
	}

	public String pwCheck(MemberDTO member) {
		String result = null;

		// 로그인 할때 mId를 통해 db에 있는 암호화 된 비밀번호를 가져온 적이 있다!

		String encPw = mdao.mLogin(member.getMId());
		String mPw = member.getMPw();

		if (pwEnc.matches(mPw, encPw)) {
			// 비밀번호 일치
			result = "OK";
		} else {
			result = "NO";
		}

		System.out.println("비밀번호 확인 result : " + result);

		return result;
	}

	public ModelAndView mLogin(MemberDTO member) {
		System.out.println("[2] controller → service : " + member);
		mav = new ModelAndView();

		// db에서 입력한 mId에 대한 mPw(암호화 된 비밀번호)를 불러온다
		String encPw = mdao.mLogin(member.getMId());

		// 우리가 입력한 비밀번호와 match 시킨다.
		String mPw = member.getMPw();

		if (pwEnc.matches(mPw, encPw)) {
			// 일치할 경우 mId에 대한 정보를 불러와서 session을 씌운다.
			MemberDTO loginMember = mdao.mView(member.getMId());
			session.setAttribute("login", loginMember);
			mav.setViewName("index");
		} else {
			mav.setViewName("member/mLogin");
		}

		return mav;
	}

	public ModelAndView mView(String mId) {
		System.out.println("[2] controller → service : " + mId);
		mav = new ModelAndView();

		MemberDTO member = mdao.mView(mId);
		System.out.println("[4] dao → service : " + member);

		// MemberDTO타입의 member를 mView.jsp에서 "view"라는 이름으로 사용하기!

		// mav중 model에 관한 내용
		// mav.addObject("이름", 값);
		mav.addObject("view", member);

		// mav중 view에 관한 내용
		// mav.setViewName("jsp이름");
		mav.setViewName("member/mView");

		return mav;
	}

	public ModelAndView mList(int page, int limit) {
		System.out.println("[2] controller → service / page : " + page + ", limit : " + limit);
		mav = new ModelAndView();

		int block = 5;

		int count = mdao.mCtn();

		int maxPage = (int) (Math.ceil((double) count / limit));

		int startRow = (page - 1) * limit + 1;

		int endRow = page * limit;

		int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;

		int endPage = startPage + block - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		pageDTO paging = new pageDTO();

		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		paging.setPage(page);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setLimit(limit);

		List<MemberDTO> memberList = mdao.mList(paging);

		mav.addObject("memberList", memberList);
		mav.addObject("paging", paging);

		mav.setViewName("member/mList");

		return mav;
	}

}
