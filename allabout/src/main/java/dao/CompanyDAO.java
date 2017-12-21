package dao;

import java.sql.SQLException;
import java.util.List;

import vo.CompanyAllVO;
import vo.CompanyAnalVO;
import vo.CompanyEmployeeVO;
import vo.CompanyIncomeVO;
import vo.CompanyInterviewVO;
import vo.CompanyVO;


public interface CompanyDAO {
	public List<CompanyVO> companyList(int pageNo) throws SQLException;
	public List<CompanyVO> companySearchList(String comName) throws SQLException;
	public List<CompanyInterviewVO> companyInterviewList(String comName) throws SQLException;	
	public CompanyAllVO showCompanyByComName(String comName) throws SQLException;	
	public int companyTotalCount() throws SQLException;
	public CompanyVO selectCompany(String comName) throws SQLException;
	public CompanyEmployeeVO selectCompanyEmpl(String comName) throws SQLException;
	public CompanyIncomeVO selectCompanyIncome(String comName) throws SQLException;
	public CompanyAnalVO selectCompanyAnal(String comName) throws SQLException;
}
