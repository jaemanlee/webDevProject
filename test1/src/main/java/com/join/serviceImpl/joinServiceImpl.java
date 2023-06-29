package com.join.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.join.dvo.joinDVO;
import com.join.mapper.joinMapper;
import com.join.service.joinService;

@Service
public class joinServiceImpl implements joinService {
	
	@Autowired
	private joinMapper joinMapper;
	
	@Override
	public int joinMember(joinDVO joinDVO) {
		String s = joinDVO.getAddressDetail();
		joinDVO.setAddress(joinDVO.getAddress()+","+s);
		int i = joinMapper.joinMember(joinDVO);
		
		return i;
		
	}

	@Override
	public List<joinDVO> selectUserList() {
		// TODO Auto-generated method stub
		
		return joinMapper.selectUserList();
	}

}
