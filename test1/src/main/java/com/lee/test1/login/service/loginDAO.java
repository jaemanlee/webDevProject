package com.lee.test1.login.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lee.test1.login.dvo.loginDVO;

@Repository
public class loginDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "loginDAO";
	
	
	public int login(loginDVO dvo) throws Exception  {
		return sqlSession.selectOne(namespace + ".login", dvo);
	}
	

}
