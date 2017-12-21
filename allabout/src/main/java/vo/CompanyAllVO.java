package vo;

public class CompanyAllVO {
	CompanyVO companyVO;
	CompanyEmployeeVO companyEmployeeVO;
	CompanyAnalVO companyAnalVO;
	CompanyIncomeVO companyIncomeVO;

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
	public CompanyAnalVO getCompanyAnalVO() {
		return companyAnalVO;
	}
	public void setCompanyAnalVO(CompanyAnalVO companyAnalVO) {
		this.companyAnalVO = companyAnalVO;
	}
	public CompanyIncomeVO getCompanyIncomeVO() {
		return companyIncomeVO;
	}
	public void setCompanyIncomeVO(CompanyIncomeVO companyIncomeVO) {
		this.companyIncomeVO = companyIncomeVO;
	}

	
	public CompanyAllVO(CompanyVO companyVO, CompanyEmployeeVO companyEmployeeVO, CompanyAnalVO companyAnalVO,
			CompanyIncomeVO companyIncomeVO) {
		super();
		this.companyVO = companyVO;
		this.companyEmployeeVO = companyEmployeeVO;
		this.companyAnalVO = companyAnalVO;
		this.companyIncomeVO = companyIncomeVO;
		
	}
	
	@Override
	public String toString() {
		return "CompanyAllVO [companyVO=" + companyVO + ", companyEmployeeVO=" + companyEmployeeVO + ", companyAnalVO="
				+ companyAnalVO + ", companyIncomeVO=" + companyIncomeVO 
				+ "]";
	}
	
	
	
}
