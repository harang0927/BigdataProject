package vo;

public class CompanyInterviewListVO {
	private CompanyInterviewVO companyInterview;
	private PagingBean pagingBean;
	
	public CompanyInterviewListVO(CompanyInterviewVO companyInterview, PagingBean pagingBean) {
		super();
		this.companyInterview = companyInterview;
		this.pagingBean = pagingBean;
	}
	
	public CompanyInterviewVO getCompanyInterview() {
		return companyInterview;
	}
	public void setCompanyInterview(CompanyInterviewVO companyInterview) {
		this.companyInterview = companyInterview;
	}
	public PagingBean getPagingBean() {
		return pagingBean;
	}
	public void setPagingBean(PagingBean pagingBean) {
		this.pagingBean = pagingBean;
	}

	@Override
	public String toString() {
		return "CompanyInterviewListVO [companyInterview=" + companyInterview + ", pagingBean=" + pagingBean + "]";
	}
	
	
	

}
