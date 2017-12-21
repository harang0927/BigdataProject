package vo;

import java.util.List;

public class CompanyListVO {
	private List<CompanyVO> company;
	private PagingBean pagingBean;
	
	public CompanyListVO(List<CompanyVO> company, PagingBean pagingBean) {
		super();
		this.company = company;
		this.pagingBean = pagingBean;
	}

	public List<CompanyVO> getCompany() {
		return company;
	}

	public void setCompany(List<CompanyVO> company) {
		this.company = company;
	}

	public PagingBean getPagingBean() {
		return pagingBean;
	}

	public void setPagingBean(PagingBean pagingBean) {
		this.pagingBean = pagingBean;
	}

	@Override
	public String toString() {
		return "CompanyListVO [company=" + company + ", pagingBean=" + pagingBean + "]";
	}
	
	
}
