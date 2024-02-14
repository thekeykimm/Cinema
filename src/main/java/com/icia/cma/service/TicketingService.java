package com.icia.cma.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.cma.dao.TicketingDAO;
import com.icia.cma.dto.MovieDTO;
import com.icia.cma.dto.TicketingDTO;
import com.icia.cma.dto.pageDTO;

@Service
public class TicketingService {

	@Autowired
	private TicketingDAO tdao;

	private ModelAndView mav;

	public List<MovieDTO> vList() {
		List<MovieDTO> list = tdao.vList();
		return list;
	}

	public List<TicketingDTO> cList(String movTitle) {
		List<TicketingDTO> list = tdao.cList(movTitle);
		return list;
	}

	public List<TicketingDTO> dList(TicketingDTO ticketing) {
		List<TicketingDTO> list = tdao.dList(ticketing);
		return list;
	}

	public List<TicketingDTO> tList(TicketingDTO ticketing) {
		List<TicketingDTO> list = tdao.tList(ticketing);
		return list;
	}

	public ModelAndView tSeat(TicketingDTO ticketing) {
		mav = new ModelAndView();
		System.out.println("[2] controller → service :" + ticketing);
		int result = tdao.tSeat(ticketing);
		System.out.println("[4] service → dao :" + ticketing);

		mav.setViewName("index");
		return mav;
	}

	public ModelAndView tSeatForm(int SchNum) {
		mav = new ModelAndView();
		mav.setViewName("ticketing/tSeat");
		mav.addObject("SchNum", SchNum);
		return mav;
	}

	public ModelAndView tcList(int page, int limit) {

		System.out.println("[2]controller-> service / page :" + page + ",limit:" + limit);
		mav = new ModelAndView();

		// (1)한 화면에 보여줄 페이지 번호 갯수
		int block = 5;

		// (3)전체 게시글 갯수 :
		int count = tdao.tCtn();

		// (4)최대 페이지
		int maxPage = (int) Math.ceil((double) count / limit);

		// (5)시작행
		int startRow = (page - 1) * limit + 1;

		// (6)끝나는 행
		int endRow = page * limit;

		// (7)시작하는 페이지
		int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;

		// (8)끝나는 페이지
		int endPage = startPage + block - 1;

		if (endPage >= maxPage) {
			endPage = maxPage;
		}

		// 페이징 객체 생성

		// DB로 보낼 정보
		pageDTO paging = new pageDTO();
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);

		// JSP로 보낼 정보
		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setLimit(limit);

		// 페이징 목록
		List<TicketingDTO> ticketingList = tdao.tcList(paging);
		// model
		mav.addObject("ticketingList", ticketingList);
		mav.addObject("paging", paging);

		mav.setViewName("ticketing/list");

		return mav;
	}


}
