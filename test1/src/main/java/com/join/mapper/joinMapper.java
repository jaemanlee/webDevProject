package com.join.mapper;

import java.util.List;

import com.join.dvo.joinDVO;

public interface joinMapper {
	public int joinMember(joinDVO joinDVO);
	
	public List<joinDVO> selectUserList();
}
