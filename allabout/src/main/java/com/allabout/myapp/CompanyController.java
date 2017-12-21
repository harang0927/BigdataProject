package com.allabout.myapp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import rtest.RChart;
import rtest.RGraph;
import service.CompanyService;
import vo.CompanyAllVO;
import vo.CompanyAnalVO;
import vo.CompanyEmployeeVO;
import vo.CompanyIncomeVO;
import vo.CompanyInterviewListVO;
import vo.CompanyInterviewVO;
import vo.CompanyListVO;
import vo.CompanyTotalVO;
import vo.CompanyVO;
import java.util.Base64;

@Controller
public class CompanyController {
	@Autowired
	RGraph rg;
	@Autowired
	RChart rc;
	@Autowired
	private CompanyService companyService;

	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}
	
	@RequestMapping("/companyList.do")
	public ModelAndView companyList(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("companyList");
		int pageNo=Integer.parseInt(request.getParameter("pageNo"));
		if(pageNo==0) pageNo=1; 
		CompanyListVO clvo = companyService.companyList(pageNo);
		System.out.println("controller : "+clvo);
		return new ModelAndView("companyList", "clvo", clvo);
	}
	
	@RequestMapping("/companySearchList.do")
	public ModelAndView companySearchList(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String companySearch = 	request.getParameter("searchBox");
		List<CompanyVO> clvo = companyService.companySearchList(companySearch);
		System.out.println("controller : "+clvo);
		return new ModelAndView("companySearchList", "clvo", clvo);
	}
	
	
	@RequestMapping("/showCompany.do")
	public ModelAndView showCompanyByComName(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String comName =request.getParameter("comName");
		CompanyVO company = companyService.selectCompany(comName);
		System.out.println("company :" +company);
		
		CompanyEmployeeVO companyEmpl = companyService.selectCompanyEmpl(comName);
		System.out.println("companyEmpl :" +companyEmpl);
		
		List<CompanyInterviewVO> companyInterview = companyService.companyInterviewList(comName);
		
		String line = rc.returnRChart1("\\'"+comName+"\\'");
		String pie = rc.returnRChart2("\\'"+comName+"\\'");
		String stick =rc.returnRChart3("\\'"+comName+"\\'");
		byte[] companyDISC = rg.returnRImg1("\\'"+comName+"\\'");
	
		CompanyTotalVO ctvo = new CompanyTotalVO(company, companyEmpl, line, pie, stick, companyDISC, companyInterview);
		System.out.println("showCompany controller : "+ctvo);
		return new ModelAndView("companyDetail", "ctvo", ctvo);
	}
	
	
	
}
