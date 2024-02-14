package com.icia.cma.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MovieDTO {
	private int movNum;
	private String movTitle;
	private String movOpenDate;
	private String movGrade;
	private String movGenre;
	private String movRunTime;
	private String movIntro;
	private String movDirector;
	private String movActors;
	
	private MultipartFile movPoster;
	private String movPosterName;

}