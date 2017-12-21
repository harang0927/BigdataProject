package dao.Impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.CompanyDAO;
import vo.CompanyAllVO;
import vo.CompanyAnalVO;
import vo.CompanyEmployeeVO;
import vo.CompanyIncomeVO;
import vo.CompanyInterviewVO;
import vo.CompanyVO;

@Repository
public class CompanyDAOImpl implements CompanyDAO {
	@Autowired
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<CompanyVO> companyList(int pageNo) throws SQLException {
		
		System.out.println("DAO companyList : " + pageNo);
		return sqlSession.selectList("Company.companyList",pageNo);
	}

	

	@Override
	public List<CompanyInterviewVO> companyInterviewList(String comName) throws SQLException {
		return sqlSession.selectList("Company.companyInterviewList", comName);
	}

	@Override
	public CompanyAllVO showCompanyByComName(String comName) throws SQLException {
		return sqlSession.selectOne("Company.showCompanyByComName",comName);
	}

	@Override
	public int companyTotalCount() throws SQLException {
		return sqlSession.selectOne("Company.companyTotalCount");
	}

	@Override
	public CompanyVO selectCompany(String comName) throws SQLException {
		return sqlSession.selectOne("Company.selectCompany", comName);
	}

	@Override
	public CompanyEmployeeVO selectCompanyEmpl(String comName) throws SQLException {
		return sqlSession.selectOne("Company.selectCompanyEmpl", comName);
	}

	@Override
	public CompanyIncomeVO selectCompanyIncome(String comName) throws SQLException {
		return sqlSession.selectOne("Company.selectCompanyIncome", comName);
	}

	@Override
	public CompanyAnalVO selectCompanyAnal(String comName) throws SQLException {
		return sqlSession.selectOne("Company.selectCompanyAnal", comName);
	}

	@Override
	public List<CompanyVO> companySearchList(String comName) throws SQLException {
		return sqlSession.selectList("Company.companySearchList", comName);
	}
 
}
