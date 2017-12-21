package vo;

import java.util.Arrays;
import java.util.List;

public class CompanyTotalVO {
	CompanyVO companyVO;
	CompanyEmployeeVO companyEmployeeVO;
	String line;
	String pie;
	String stick;
	byte[] companyDISC;
	List<CompanyInterviewVO> companyInterviewVO;
	
	public CompanyTotalVO() {
		super();
	}

	public CompanyTotalVO(CompanyVO companyVO, CompanyEmployeeVO companyEmployeeVO, String line, String pie,
			String stick, byte[] companyDISC, List<CompanyInterviewVO> companyInterviewVO) {
		super();
		this.companyVO = companyVO;
		this.companyEmployeeVO = companyEmployeeVO;
		this.line = line;
		this.pie = pie;
		this.stick = stick;
		this.companyDISC = companyDISC;
		this.companyInterviewVO = companyInterviewVO;
	}

	public CompanyVO getCompanyVO() {
		return companyVO;
	}

	public void setCompanyVO(CompanyVO companyVO) {
		this.companyVO = companyVO;
	}

	public CompanyEmployeeVO getCompanyEmployeeVO() {
		return companyEmployeeVO;
	}

	public void setCompanyEmployeeVO(CompanyEmployeeVO companyEmployeeVO) {
		this.companyEmployeeVO = companyEmployeeVO;
	}

	public String getLine() {
		return line;
	}

	public void setLine(String line) {
		this.line = line;
	}

	public String getPie() {
		return pie;
	}

	public void setPie(String pie) {
		this.pie = pie;
	}

	public String getStick() {
		return stick;
	}

	public void setStick(String stick) {
		this.stick = stick;
	}

	public byte[] getCompanyDISC() {
		return companyDISC;
	}

	public void setCompanyDISC(byte[] companyDISC) {
		this.companyDISC = companyDISC;
	}

	public List<CompanyInterviewVO> getCompanyInterviewVO() {
		return companyInterviewVO;
	}

	public void setCompanyInterviewVO(List<CompanyInterviewVO> companyInterviewVO) {
		this.companyInterviewVO = companyInterviewVO;
	}

	@Override
	public String toString() {
		return "CompanyTotalVO [companyVO=" + companyVO + ", companyEmployeeVO=" + companyEmployeeVO + ", line=" + line
				+ ", pie=" + pie + ", stick=" + stick + ", companyDISC=" + Arrays.toString(companyDISC)
				+ ", companyInterviewVO=" + companyInterviewVO + "]";
	}

	
	
	
}
