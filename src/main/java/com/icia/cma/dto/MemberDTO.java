package com.icia.cma.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberDTO {
	
	/* 회원관리 DTO */
	private String mId;
	private String mPw;
	private String mName;
	private String mBirth;
	private String mGender;
	private String mEmail;
	private String mPhone;
	private String mAddr;
	
	private MultipartFile mProfile;
	private String mProfileName;
	
	private String addr1;	// 우편번호
	private String addr2;	// 일반주소(도로명, 지번)
	private String addr3;	// 상세주소
}
