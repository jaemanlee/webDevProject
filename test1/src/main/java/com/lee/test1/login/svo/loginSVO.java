package com.lee.test1.login.svo;

import java.util.ArrayList;
import java.util.List;

import com.lee.test1.login.dvo.loginDVO;

public class loginSVO {
	loginDVO dvo = new loginDVO();
	
	  public loginDVO getDvo() {
		return dvo;
	}

	public void setDvo(loginDVO dvo) {
		this.dvo = dvo;
	}

	public List<loginDVO> getListDVO() {
		return listDVO;
	}

	public void setListDVO(List<loginDVO> listDVO) {
		this.listDVO = listDVO;
	}

	  
	  List<loginDVO> listDVO = new ArrayList<loginDVO>();
}
