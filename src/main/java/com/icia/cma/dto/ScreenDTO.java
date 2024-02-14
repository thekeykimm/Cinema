package com.icia.cma.dto;

import lombok.Data;

@Data
public class ScreenDTO {
	private String ScrNum;	// -- 상영관 번호
	private String ScrName; // -- 상영관 이름
	private String CinName; // -- 영화관 이름
	private int ScrCnt; // --좌석 수
}
