package com.join.service;

import java.util.List;

import com.join.dvo.joinDVO;

public interface joinService {
	public int joinMember(joinDVO joinDVO);

	public List<joinDVO> selectUserList();
}
