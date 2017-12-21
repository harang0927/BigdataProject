package dao;

import java.sql.SQLException;

import vo.MemberAnalVO;
import vo.MemberVO;

public interface MemberDAO {
	public void registerMember(MemberVO mvo) throws SQLException;
	public Object memIdCheck(String memId) throws SQLException;
	public MemberVO login(MemberVO mvo) throws SQLException;
	public void deleteMember(String memId)throws SQLException;
	public void updateMember(MemberVO mvo) throws SQLException;
	public MemberVO showMyInfoById(String memId) throws SQLException;
	public void insertDISC(MemberAnalVO mavo) throws SQLException;
	public MemberAnalVO resultDISC(String memId) throws SQLException;
	

}
