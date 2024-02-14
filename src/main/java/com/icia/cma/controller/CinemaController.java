package com.icia.cma.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.cma.dto.CinemaDTO;
import com.icia.cma.service.CinemaService;

@Controller
public class CinemaController {

	@Autowired
	private CinemaService csvc;

	private ModelAndView mav;

	// eWriteForm : 영화 등록 페이지로 이동
	@RequestMapping(value = "/RegistForm", method = RequestMethod.GET)
	public String WriteForm() {
		return "cinema/register";
	}

	// 영화등록
	// eWrite
	@RequestMapping(value = "/cRegist", method = RequestMethod.POST)
	public ModelAndView movie(@ModelAttribute CinemaDTO cinema) {

		System.out.println("cRegist : 영화관 등록 메소드");
		System.out.println("[1] jsp → controller");

		mav = csvc.cRegist(cinema);

		return mav;
	}

	// 영화 리스트
	// eList
	@RequestMapping(value = "/cList", method = RequestMethod.GET)
	public ModelAndView cList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {
		System.out.println("cList : 영화관 목록 작성 메소드");
		System.out.println("[1] jsp → controller");

		mav = csvc.cList(page, limit);
		System.out.println(mav);
		return mav;
	}

	// cineList : 영화관 목록 불러오기
	@RequestMapping(value = "/cineList", method = RequestMethod.POST)
	public @ResponseBody List<CinemaDTO> cineList() {
		System.out.println("1");
		List<CinemaDTO> list = csvc.cineList();
		System.out.println("5");
		return list;
	}

}
