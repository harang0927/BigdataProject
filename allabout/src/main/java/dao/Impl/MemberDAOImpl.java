package dao.Impl;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.MemberDAO;
import vo.MemberAnalVO;
import vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	@Override
	public void registerMember(MemberVO mvo) throws SQLException {
		System.out.println("dao registerMember : " + mvo);
		sqlSession.insert("Member.registerMember", mvo);
		
	}

	@Override
	public Object memIdCheck(String memId) throws SQLException {
		return sqlSession.selectOne("Member.memIdCheck", memId);
	}

	@Override
	public MemberVO login(MemberVO mvo) throws SQLException {
		return sqlSession.selectOne("Member.login", mvo);
	}


	@Override
	public void deleteMember(String memId) throws SQLException {
		sqlSession.delete("Member.deleteMember", memId);
		
	}

	@Override
	public void updateMember(MemberVO mvo) throws SQLException {
		sqlSession.update("Member.updateMember", mvo);
		
	}

	@Override
	public MemberVO showMyInfoById(String memId) throws SQLException {
		return sqlSession.selectOne("Member.showMyInfoById", memId);

	}


	@Override
	public void insertDISC(MemberAnalVO mavo) throws SQLException {
		sqlSession.insert("Member.insertDISC", mavo);
		
	}


	@Override
	public MemberAnalVO resultDISC(String memId) throws SQLException {
		System.out.println("dao resultDISC : " + memId);
		return sqlSession.selectOne("Member.resultDISC", memId);
	}




	

	
}
