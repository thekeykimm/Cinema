package com.icia.cma.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.cma.dto.MovieDTO;
import com.icia.cma.service.MovieService;

@Controller
public class MovieController {

	@Autowired
	private MovieService msvc;

	private ModelAndView mav;

	@RequestMapping(value = "/WriteForm", method = RequestMethod.GET)
	public String WriteForm() {
		return "movie/eWrite";
	}

	@RequestMapping(value = "/eWrite", method = RequestMethod.POST)
	public ModelAndView eWrite(@ModelAttribute MovieDTO movie) {
		mav = msvc.eWrite(movie);
		System.out.println("[1] jsp → controller : " + movie);
		return mav;
	}

	// eList
	@RequestMapping(value = "/eList", method = RequestMethod.GET)
	public ModelAndView eList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {

		System.out.println("eList: 게시글 목록 메소드");
		System.out.println("[1] jsp → controller");

		mav = msvc.eList(page, limit);
		System.out.println(mav);
		return mav;
	}
	
	@RequestMapping(value = "/eView", method = RequestMethod.GET)
	public ModelAndView eView(@RequestParam("movNum") int movNum) {

		System.out.println("eView : 게시글 상세보기 메서드");
		System.out.println("[1] jsp → controller");

		mav = msvc.eView(movNum);

		return mav;
	}
	
	@RequestMapping(value = "eInfo", method = RequestMethod.GET)
	public String eInfo() {
		return "movie/eInfo";
	}
}
