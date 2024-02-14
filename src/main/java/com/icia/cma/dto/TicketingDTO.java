package com.icia.cma.dto;

import java.util.Date;

import lombok.Data;

@Data
public class TicketingDTO {
	private int TicNum;				// 예매 고유번호
	private int TicTotalPeople;		// 예매 총 인원수
	private Date TicPayTime;		// 예매 결제 시간
	private int TicPayMoney;		// 예매 결제 금액
	private String mId;				// 예매 회원 아이디
	private int SchNum;				// 예매 일정 고유번호
	private String MovTitle;		// 영화 이름
	private String CinName;			// 영화관 이름
	private String ScrName; 		// 상영관 이름
	private int ScrCnt; 			// 좌석 수
	private String SchDate;			// 영화 상영날짜
	private String schTime;			// 영화 상영시간
}
