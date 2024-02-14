package com.icia.cma.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.cma.dto.ScreenDTO;
import com.icia.cma.service.ScreenService;

@Controller
public class ScreenController {

	@Autowired
	private ScreenService ssvc;

	private ModelAndView mav;

	// sRegistForm : 상영관 등록 페이지로 이동
	@RequestMapping(value = "/sRegistForm", method = RequestMethod.GET)
	public String WriteForm() {
		return "screen/register";
	}

	// 상영관 등록
	@RequestMapping(value = "/sRegist", method = RequestMethod.POST)
	public ModelAndView movie(@ModelAttribute ScreenDTO screen) {

		System.out.println("sRegist : 상영관 등록 메소드");
		System.out.println("[1] jsp → controller");

		mav = ssvc.sRegist(screen);

		return mav;
	}

	// 상영관 리스트
	@RequestMapping(value = "/sList", method = RequestMethod.GET)
	public ModelAndView sList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {

		System.out.println("sList : 상영관 목록 작성 메소드");
		System.out.println("[1] jsp → controller");

		mav = ssvc.sList(page, limit);
		System.out.println(mav);
		return mav;
	}
}
