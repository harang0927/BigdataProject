package com.allabout.myapp;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sun.research.ws.wadl.Request;

import rtest.RChart;
//import rtest.RChart;
import rtest.RGraph;
import service.MemberService;
import vo.MemberAnalVO;
import vo.MemberVO;
//import rtest.WordCloud2;
@Controller
public class RGraphController {
	@Autowired
	RGraph rg;
	@Autowired
	RChart rc;
	@Autowired
	MemberService memberService;

/*	
	@RequestMapping("/rchart1")
	public ModelAndView get4() {
		ModelAndView mav = new ModelAndView();
		String name = "瓤己";
		String s = rc.returnRChart1("\\'"+name+"\\'");
		System.out.println(s);
		mav.addObject("rchart_content", s);
		mav.setViewName("rchart");
		return mav;
	}

	@RequestMapping("/rchart2")
	public ModelAndView get5() {
		ModelAndView mav = new ModelAndView();
		String name = "瓤己";
		String s = rc.returnRChart2("\\'"+name+"\\'");
		System.out.println(s);
		mav.addObject("rchart_content", s);
		mav.setViewName("rchart");
		return mav;
	}
	@RequestMapping("/rchart3")
	public ModelAndView get6() {
		ModelAndView mav = new ModelAndView();
		String name = "瓤己";
		String s = rc.returnRChart3("\\'"+name+"\\'");
		System.out.println(s);
		mav.addObject("rchart_content", s);
		mav.setViewName("rchart");
		return mav;
	}

	@RequestMapping("/rgraph1")
	public ModelAndView get1() {
		ModelAndView mav = new ModelAndView();
		String name = "瓤己";
		byte[] s = rg.returnRImg1("\\'"+name+"\\'");
		mav.addObject("img_content", s);
		mav.setViewName("rgraph");
		return mav;
	}	*/
/*	@RequestMapping("/graph2")
	public ModelAndView get2(HttpServletRequest request, HttpSession session) throws SQLException {
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		String memId = mvo.getMemId();
		System.out.println("memId : " + memId);

		
		byte[] s = rg.returnRImg2("\\'"+memId+"\\'");
	
		return new ModelAndView("discresult","img_content", s);
	}	*/
}






