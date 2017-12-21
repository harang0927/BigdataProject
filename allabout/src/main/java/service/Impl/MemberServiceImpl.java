package service.Impl;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDAO;
import service.MemberService;
import vo.MemberAnalVO;
import vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO;
	
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	public void registerMember(MemberVO mvo) throws SQLException {
		System.out.println("service registerMember : " + mvo);
		memberDAO.registerMember(mvo);
	}

	@Override
	public boolean memIdCheck(String memId) throws SQLException {
		boolean result = false;
		if(memberDAO.memIdCheck(memId)!=null)
			result = true;
		return result;
	}

	@Override
	public MemberVO login(MemberVO mvo) throws SQLException {
		return memberDAO.login(mvo);
	}

	@Override
	public void deleteMember(String memId) throws SQLException {
		memberDAO.deleteMember(memId);
	}

	@Override
	public void updateMember(MemberVO mvo) throws SQLException {
		memberDAO.updateMember(mvo);
	}

	@Override
	public MemberVO showMyInfoById(String memId) throws SQLException {
		return memberDAO.showMyInfoById(memId);
	}

	@Override
	public void insertDISC(MemberAnalVO mavo) throws SQLException {
		memberDAO.insertDISC(mavo);
	}

	@Override
	public MemberAnalVO resultDISC(String memId) throws SQLException {
		System.out.println("service resultDISC : " + memId);
		return memberDAO.resultDISC(memId);
	}
	
	
}
