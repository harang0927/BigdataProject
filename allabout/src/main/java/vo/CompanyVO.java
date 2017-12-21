package vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class CompanyVO {
	private String comName;
	private String comLogo;
	private String comAddr;
	private String comDescript;
	private String comIndustry;	
	
	
	
	public CompanyVO() {
		super();
	}

	public CompanyVO(String comName, String comLogo, String comAddr, String comDescript, String comIndustry) {
		super();
		this.comName = comName;
		this.comLogo = comLogo;
		this.comAddr = comAddr;
		this.comDescript = comDescript;
		this.comIndustry = comIndustry;
	}	
	
	public CompanyVO(String comName, String comLogo, String comIndustry) {
		super();
		this.comName = comName;
		this.comLogo = comLogo;
		this.comIndustry = comIndustry;
	}



	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName =comName;
	}
	public String getComLogo() {
		return comLogo;
	}
	public void setComLogo(String comLogo) {
		this.comLogo = comLogo;
	}
	public String getComAddr() {
		return comAddr;
	}
	public void setComAddr(String comAddr) {
		this.comAddr = comAddr;
	}
	public String getComDescript() {
		return comDescript;
	}
	public void setComDescript(String comDescript) {
		this.comDescript = comDescript;
	}
	public String getComIndustry() {
		return comIndustry;
	}
	public void setComIndustry(String comIndustry) {
		this.comIndustry = comIndustry;
	}
	@Override
	public String toString() {
		return "CompanyVO [comName=" + comName + ", comLogo=" + comLogo + ", comAddr=" + comAddr + ", comDescript="
				+ comDescript + ", comIndustry=" + comIndustry + "]";
	}
	
	

}
