package com.icia.cma.dto;

import lombok.Data;

@Data
public class ScheduleDTO {
	private int schNum;			//-- 일정(스캐줄)고유 번호
	private String movTitle;	//-- 영화 이름
	private String cinName;		//-- 극장 이름
	private String scrNum;		//-- 상영관 고유 번호
	private String schDate;		//-- 영화 상영 날짜
	private String schTime;		//-- 영화 시간
}
