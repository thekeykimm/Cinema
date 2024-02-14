package com.icia.cma.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.cma.dao.ScreenDAO;
import com.icia.cma.dto.ScreenDTO;
import com.icia.cma.dto.pageDTO;

@Service
public class ScreenService {

	@Autowired
	private ScreenDAO sdao;

	private ModelAndView mav;

	public ModelAndView sRegist(ScreenDTO screen) {
		mav = new ModelAndView();

		System.out.println("[2] controller -> service :" + screen);

		int result = sdao.sRegist(screen);
		System.out.println("[4]dao-> service :" + result);

		if (result > 0) {
			// 성공시 페이지로 이동
			mav.setViewName("redirect:/sList");
		} else {
			// 실패시
			mav.setViewName("screen/register");
		}

		return mav;
	}

	public ModelAndView sList(int page, int limit) {
		System.out.println("[2]controller-> service / page :" + page + ",limit:" + limit);
		mav = new ModelAndView();

		// (1)한 화면에 보여줄 페이지 번호 갯수
		int block = 5;

		// (3)전체 게시글 갯수 :
		int count = sdao.sCtn();

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
		List<ScreenDTO> screenList = sdao.sList(paging);
		// model
		mav.addObject("screenList", screenList);
		mav.addObject("paging", paging);

		mav.setViewName("screen/list");

		return mav;
	}
	
	
}
