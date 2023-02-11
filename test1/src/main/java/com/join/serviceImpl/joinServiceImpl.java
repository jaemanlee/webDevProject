package com.join.serviceImpl;

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

}
