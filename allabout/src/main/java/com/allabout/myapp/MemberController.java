package com.allabout.myapp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import rtest.RChart;
import rtest.RGraph;
import vo.MemberAnalVO;
import vo.MemberVO;
import service.MemberService;

@Controller
public class MemberController {
	@Autowired
	RGraph rg;
	@Autowired
	RChart rc;
	@Autowired
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping("/register.do")
	public ModelAndView register(HttpServletRequest request,
			HttpServletResponse response, MemberVO mvo) throws Exception {
		System.out.println("memberService.registerMember :"+mvo);
		memberService.registerMember(mvo);
		return new ModelAndView("login","mvo",mvo);
	}
	
	@RequestMapping("/memIdCheck.do")
	public ModelAndView memIdCheck(HttpServletRequest request,
			HttpServletResponse response, MemberVO mvo) throws Exception {
		String memId = request.getParameter("memId");

		boolean flag = memberService.memIdCheck(memId);
		System.out.println(flag);

		return new ModelAndView("JsonView", "flag", flag);
	}
	
	@RequestMapping("/login.do")
	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response, HttpSession session, MemberVO mvo)
			throws Exception {
		String path = "/home";
		MemberVO rvo = memberService.login(mvo);
		if (mvo != null) {
			session.setAttribute("mvo", rvo);
			path = "redirect:/html/home.jsp";
		}else{
			path="redirect:/html/login.jsp";
		}

		return new ModelAndView(path);
	}
	
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws Exception {

		if (session.getAttribute("mvo") != null)
			session.invalidate();

		return new ModelAndView("redirect:/html/home.jsp");
	}
	

	
	@RequestMapping("/insertDISC.do")
	public ModelAndView insertDISC(HttpServletRequest request,
			HttpServletResponse response,HttpSession session) throws Exception{
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		String memId = mvo.getMemId();
		System.out.println("memID : " + memId);
		int dominance = Integer.parseInt(request.getParameter("dominance"));
		System.out.println("Dominance :" + dominance);
		int influence = Integer.parseInt(request.getParameter("influence"));
		System.out.println("influence :" + influence);
		int steadiness = Integer.parseInt(request.getParameter("steadiness"));
		System.out.println("steadiness :" + steadiness);
		int conscientious = Integer.parseInt(request.getParameter("conscientious"));
		System.out.println("conscientious :" + conscientious);
		
		MemberAnalVO mavo = new MemberAnalVO(memId, dominance, influence, steadiness, conscientious);
		memberService.insertDISC(mavo);
		System.out.println("mavo :: "+mavo);
		return new ModelAndView("redirect:/resultDISC.do", "mavo", mavo);
	}	
	
	@RequestMapping("/resultDISC.do")
	public ModelAndView resultDISC(HttpServletRequest request,
			HttpServletResponse response,HttpSession session) throws Exception{
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		String memId = mvo.getMemId();
		System.out.println("memId : " + memId);
		
		byte[] memberDISC = rg.returnRImg2("\\'"+memId+"\\'");
		
		return new ModelAndView("discresult","mavo", memberDISC);

	}	
	@RequestMapping("/mydiscResult.do")
	public ModelAndView mydiscResult(HttpServletRequest request,
			HttpServletResponse response,HttpSession session,MemberVO mvo) throws Exception{
		MemberVO rvo= (MemberVO) session.getAttribute("mvo");
		String memId=rvo.getMemId(); 	
		System.out.println("memberDISC : " + memId);
		
		byte[] memberDISC = rg.returnRImg2("\\'"+memId+"\\'");
		System.out.println("memberDISC : " + memberDISC);
		return new ModelAndView("openMyDisc","mavo", memberDISC);

	}	
	
	@RequestMapping("/showMyInfoById.do")
	public ModelAndView showMyInfoById(HttpServletRequest request,
			HttpServletResponse response,HttpSession session) throws Exception{
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		MemberVO rvo = memberService.showMyInfoById(mvo.getMemId());
		
		return new ModelAndView("mypage","mvo", rvo);

	}	
	
}
