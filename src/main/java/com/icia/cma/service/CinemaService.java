package com.icia.cma.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.cma.dao.CinemaDAO;
import com.icia.cma.dto.CinemaDTO;
import com.icia.cma.dto.pageDTO;

@Service
public class CinemaService {

	@Autowired
	private CinemaDAO cdao;

	private ModelAndView mav;


	@Autowired
	private HttpSession session;

//	public ModelAndView cView(int cinNum) {
//		System.out.println("[2] controller → service" + cinNum);
//		mav = new ModelAndView();
//		// 조회수 1 증가
//
//		CinemaDTO cinema = cdao.cView(cinNum);
//
//		mav.addObject("view", cinema);
//		mav.setViewName("cinema/view");
//		return mav;
//	}
//
//	public ModelAndView cModify(CinemaDTO cinema) {
//		mav = new ModelAndView();
//		System.out.println("[2] controller -> service :" + cinema);
//
//		mav = new ModelAndView();
//
//
//		int result = cdao.cModify(cinema);
//
//		System.out.println("[4] dao → service : " + result);
//
//		if (result > 0) {
//
//			mav.setViewName("redirect:/cinema/view?CinNum=" + cinema.getCinNum());
//
//		} else {
//			// 회원수정 실패시 index 페이지로 이동
//
//			mav.setViewName("index");
//		}
//		return mav;
//	}
//
//	public ModelAndView cDelete(int cinNum) {
//		int result = cdao.cDelete(cinNum);
//
//		if (result > 0) {
//
//		} else {
//			mav.setViewName("redirect:/cinema/view?CinNum=" + cinNum);
//		}
//		return mav;
//	}

	public ModelAndView cRegist(CinemaDTO cinema) {
		mav = new ModelAndView();
		
		System.out.println("[2] controller -> service :" + cinema);

		int result = cdao.cRegist(cinema);
		System.out.println("[4]dao-> service :" + result);

		if (result > 0) {
			// 성공시 페이지로 이동
			mav.setViewName("redirect:/cList");
		} else {
			// 실패시
			mav.setViewName("cinema/register");
		}

		return mav;
	}

	public ModelAndView cList(int page, int limit) {
		System.out.println("[2]controller-> service / page :" + page + ",limit:" + limit);
		mav = new ModelAndView();

		// (1)한 화면에 보여줄 페이지 번호 갯수
		int block = 5;

		// (3)전체 게시글 갯수 :
		int count = cdao.cCtn();

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
		List<CinemaDTO> cinemaList = cdao.cList(paging);
		// model
		mav.addObject("cinemaList", cinemaList);
		mav.addObject("paging", paging);

		mav.setViewName("cinema/list");

		return mav;
	}

	public List<CinemaDTO> cineList() {
		System.out.println("2");
		List<CinemaDTO> list = cdao.cineList();
		System.out.println("4");
		return list;
	}

}
