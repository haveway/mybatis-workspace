package com.kh.mybatis.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.member.model.vo.Member;

public class MemberDao {
	
	public int insertMember(SqlSession sqlSession, Member m) {
		
		/*
		 * int result = 0;
		 * PreparedStatement pstmt = null;
		 * 
		 * String sql = prop.getProperty("insertMember");
		 * 
		 * try{
		 * 	pstmt = conn.prepareStatement(sql);
		 * 
		 * 	pstmt.setString(1, m.getUserNo());
		 * .....
		 * } catch(Exception e){
		 * 	얼씨구절씨구
		 * } finally {
		 * 	close(pstmt)
		 * }
		 *  return result;
		 * }
		 */
		
		/*
		 * sqlSession에서 제공하는 메소드를 통해서 sql문을 찾아서 실행하고 결과도 바로 받아볼 수 있다. 
		 * 
		 * sqlSession.sql문종류에맞는메소드("mapper파일의 namespace.해당sql문의id", sql문을 완성시킬 객체);
		 * => 해당 sql문이 미완성 상태가 아니라면 sql문을 완성시킬 객체는 생략 가능하다.
		 */
		
		//int result = sqlSession.insert("memberMapper.insertMember", m);
		//return result;
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	
	public Member loginMember(SqlSession sqlSession, Member m) {
		//Member loginUser = sqlSession.selectOne("memberMapper.loginMember", m);
		//return loginUser;
		// selectOne() : 조회결과가 없다면 null을 반환
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	
	

}
