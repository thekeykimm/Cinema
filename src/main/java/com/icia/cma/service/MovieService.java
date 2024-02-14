package com.icia.cma.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.cma.dto.MovieDTO;
import com.icia.cma.dto.pageDTO;
import com.icia.cma.dao.MovieDAO;

@Service
public class MovieService {

	@Autowired
	private MovieDAO mdao;

	@Autowired
	private HttpServletRequest request;

	private ModelAndView mav;

	public ModelAndView eWrite(MovieDTO movie) {
		mav = new ModelAndView();

		System.out.println("[2] controller -> service :" + movie);

		MultipartFile MovPoster = movie.getMovPoster();
		if (!MovPoster.getOriginalFilename().isEmpty()) {

			UUID uuid = UUID.randomUUID();

			String MovPosterName = uuid.toString().substring(0, 8) + "_" + MovPoster.getOriginalFilename();

			movie.setMovPosterName(MovPosterName);

			String savePath = "C:\\Users\\kr357\\Desktop\\My\\Spring Workspace\\Cinema\\src\\main\\webapp\\resources\\fileUpload\\";
			try {
				MovPoster.transferTo(new File(savePath + MovPosterName));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}

		// (7)DB에 저장
		int result = mdao.eWrite(movie);

		if (result > 0) {
			mav.setViewName("index");
		} else {
			mav.setViewName("movie/eWrite");
		}
		return mav;
	}

	public ModelAndView eList(int page, int limit) {
		System.out.println("[2] controller → service / page : " + page + ", limit : " + limit);
		mav = new ModelAndView();

		// (1) 한 화면에 보여줄 페이지 번호 갯수
		int block = 5;
		int count = mdao.eCtn();
		int maxPage = (int) Math.ceil((double) count / limit);
		int startRow = (page - 1) * limit + 1; // 1 6 11 16 21
		int endRow = page * limit; // 5 10 15 20 25
		int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;
		int endPage = startPage + block - 1;

		if (endPage >= maxPage) {
			endPage = maxPage;
		}

		// 페이징 객체 생성
		pageDTO paging = new pageDTO();

		// DB로 보낼 정보
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		// JSP로 보낼 정보
		paging.setPage(page);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setLimit(limit);

		// 페이징 목록
		List<MovieDTO> movieList = mdao.eList(paging);

		// Model
		mav.addObject("movieList", movieList);
		mav.addObject("paging", paging);

		// View
		mav.setViewName("movie/eList");

		return mav;
	}

	public ModelAndView eView(int movNum) {
		System.out.println("[2] controller → service" + movNum);
		mav = new ModelAndView();
		// 조회수 1 증가

		MovieDTO movie = mdao.eView(movNum);
		System.out.println("[4] dao -> service : " + movie);

		mav.addObject("view", movie);
		mav.setViewName("movie/eView");
		return mav;
	}

}
