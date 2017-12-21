package service.Impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CompanyDAO;
import service.CompanyService;
import vo.CompanyAllVO;
import vo.CompanyAnalVO;
import vo.CompanyEmployeeVO;
import vo.CompanyIncomeVO;
import vo.CompanyInterviewListVO;
import vo.CompanyInterviewVO;
import vo.CompanyListVO;
import vo.CompanyVO;
import vo.PagingBean;

@Service
public class CompanyServiceImpl implements CompanyService{
	@Autowired
	CompanyDAO companyDAO;
	
	public void setCompanyDAO(CompanyDAO companyDAO) {
		this.companyDAO = companyDAO;
	}

	@Override
	public CompanyListVO companyList(int pageNo) throws SQLException {
	      int total=companyDAO.companyTotalCount();
	      List<CompanyVO> list=companyDAO.companyList(pageNo);
	      
	      PagingBean paging = 
	            new PagingBean(total, pageNo);
	      
	      CompanyListVO lvo = new CompanyListVO(list, paging);
	      System.out.println("Service companyList : " + lvo);
	      return lvo;
	}

	@Override
	public List<CompanyVO> companySearchList(String comName) throws SQLException {
		return companyDAO.companySearchList(comName);
	}

	@Override
	public List<CompanyInterviewVO> companyInterviewList(String comName) throws SQLException {
		return companyDAO.companyInterviewList(comName);
	}

	@Override
	public CompanyAllVO showCompanyByComName(String comName) throws SQLException {
		return companyDAO.showCompanyByComName(comName);
	}

	@Override
	public CompanyVO selectCompany(String comName) throws SQLException {
		return companyDAO.selectCompany(comName);
	}

	@Override
	public CompanyEmployeeVO selectCompanyEmpl(String comName) throws SQLException {
		return companyDAO.selectCompanyEmpl(comName);
	}

	@Override
	public CompanyIncomeVO selectCompanyIncome(String comName) throws SQLException {
		return companyDAO.selectCompanyIncome(comName);
	}

	@Override
	public CompanyAnalVO selectCompanyAnal(String comName) throws SQLException {
		return companyDAO.selectCompanyAnal(comName);
	}
	
	
}
