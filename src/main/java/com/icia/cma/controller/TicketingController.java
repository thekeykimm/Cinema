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
import com.icia.cma.dto.MovieDTO;
import com.icia.cma.dto.TicketingDTO;
import com.icia.cma.service.TicketingService;

@Controller
public class TicketingController {

	@Autowired
	private TicketingService tsvc;

	private ModelAndView mav;

	// 예매 페이지 이동
	@RequestMapping(value = "ticketing", method = RequestMethod.GET)
	public String tickting() {
		return "ticketing/ticketing";
	}

	// vList : 영화 목록 불러오기
	@RequestMapping(value = "/vList", method = RequestMethod.POST)
	public @ResponseBody List<MovieDTO> vList() {
		List<MovieDTO> list = tsvc.vList();
		return list;
	}

	// cList : 극장 목록 불러오기
	@RequestMapping(value = "/cList", method = RequestMethod.POST)
	public @ResponseBody List<TicketingDTO> cList(@RequestParam("movTitle") String movTitle) {
		System.out.println("영화 확인 : " + movTitle);
		List<TicketingDTO> list = tsvc.cList(movTitle);
		return list;
	}

	// dList : 날짜 목록 불러오기
	@RequestMapping(value = "/dList", method = RequestMethod.POST)
	public @ResponseBody List<TicketingDTO> dList(@ModelAttribute TicketingDTO ticketing) {
		System.out.println("극장 확인 : " + ticketing);
		List<TicketingDTO> list = tsvc.dList(ticketing);
		return list;
	}

	// tList : 시간 목록 불러오기
	@RequestMapping(value = "/tList", method = RequestMethod.POST)
	public @ResponseBody List<TicketingDTO> tList(@ModelAttribute TicketingDTO ticketing) {
		System.out.println("날짜 확인 : " + ticketing);
		List<TicketingDTO> list = tsvc.tList(ticketing);
		return list;
	}

	// 좌석 페이지 이동
	@RequestMapping(value = "/tSeatForm", method = RequestMethod.GET)
	public ModelAndView tSeatForm(@RequestParam("SchNum") int SchNum) {
		mav = tsvc.tSeatForm(SchNum);
		return mav;
	}

	// tSeat : 좌석 지정
	@RequestMapping(value = "/tSeat", method = RequestMethod.POST)
	public ModelAndView tSeat(@ModelAttribute TicketingDTO ticketing) {

		System.out.println("[1] jsp → controller :" + ticketing);

		mav = tsvc.tSeat(ticketing);

		return mav;
	}

	// tcList : 예매 내역
	@RequestMapping(value = "/tcList", method = RequestMethod.GET)
	public ModelAndView tcList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {

		System.out.println("cList : 영화관 목록 작성 메소드");
		System.out.println("[1] jsp → controller");

		mav = tsvc.tcList(page, limit);
		System.out.println(mav);
		return mav;
	}

}
