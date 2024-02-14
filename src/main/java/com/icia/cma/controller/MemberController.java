package com.icia.cma.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.cma.dto.MemberDTO;
import com.icia.cma.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService msvc;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;

	/* 회원등록 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	@RequestMapping(value = "/mJoinForm", method = RequestMethod.GET)
	public String mJoinForm() {
		return "member/mJoin";
	}

	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public @ResponseBody String idCheck(@RequestParam("mId") String mId) {
		String result = msvc.idCheck(mId);
		return result;
	}

	@RequestMapping(value = "/mJoin", method = RequestMethod.POST)
	public ModelAndView mJoin(@ModelAttribute MemberDTO member) {
		System.out.println("\n=== 회원제 게시판 회원가입 메소드 ===");
		System.out.println("[1] jsp → controller : " + member);

		mav = msvc.mJoin(member);
		System.out.println("[5] service → controller : " + mav);

		return mav;
	}

	@RequestMapping(value = "/mLoginForm", method = RequestMethod.GET)
	public String mLoginForm() {
		return "member/mLogin";
	}

	@RequestMapping(value = "/pwCheck", method = RequestMethod.POST)
	public @ResponseBody String pwCheck(@ModelAttribute MemberDTO member) {
		String result = msvc.pwCheck(member);
		return result;
	}

	@RequestMapping(value = "/mLogin", method = RequestMethod.POST)
	public ModelAndView mLogin(@ModelAttribute MemberDTO member) {
		System.out.println("\n=== 회원제 게시판 로그인 메소드 ===");
		System.out.println("[1] jsp → controller : " + member);

		mav = msvc.mLogin(member);
		System.out.println("[5] service → controller : " + mav);

		return mav;
	}

	@RequestMapping(value = "/mLogout", method = RequestMethod.GET)
	public String mLogout() {
		session.invalidate();
		return "index";
	}
	/* 회원 등록 끝 */

	// mList : 회원목록
	@RequestMapping(value = "/mList", method = RequestMethod.GET)
	public ModelAndView mList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {
		System.out.println("\n=== 회원목록 메소드 ===");
		System.out.println("[1] jsp → controller / page : " + page + ", limit : " + limit);

		mav = msvc.mList(page, limit);
		System.out.println("[5] service → controller : " + mav);

		return mav;
	}

	// mView?mId : 회원상세보기
	@RequestMapping(value = "/mView", method = RequestMethod.GET)
	public ModelAndView mView(@RequestParam("mId") String mId) {
		System.out.println("mView : 회원상세보기 메소드");
		System.out.println("[1] jsp → controller : " + mId);

		mav = msvc.mView(mId);
		System.out.println("[5] service → controller : " + mav);

		return mav;
	}
}