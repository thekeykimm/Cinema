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

import com.icia.cma.dto.MovieDTO;
import com.icia.cma.dto.ScheduleDTO;
import com.icia.cma.service.ScheduleService;

@Controller
public class ScheduleController {

	@Autowired
	private ScheduleService hsvc;

	private ModelAndView mav;

	@RequestMapping(value = "ScForm", method = RequestMethod.GET)
	public String ScForm() {
		return "schedule/register";
	}

	// mvList : 영화 목록 불러오기
	@RequestMapping(value = "/mvList", method = RequestMethod.POST)
	public @ResponseBody List<MovieDTO> mvList() {
		List<MovieDTO> list = hsvc.mvList();
		return list;
	}

	@RequestMapping(value = "/hRegist", method = RequestMethod.POST)
	public ModelAndView hRegist(@ModelAttribute ScheduleDTO schedule) {
		System.out.println("[1] jsp → controller : " + schedule);

		mav = hsvc.hRegist(schedule);
		System.out.println("[5] service → controller : " + mav);

		return mav;
	}

	@RequestMapping(value = "/hList", method = RequestMethod.GET)
	public ModelAndView hList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {
		System.out.println("[1] jsp → controller");

		mav = hsvc.hList(page, limit);
		System.out.println(mav);
		return mav;
	}
}
