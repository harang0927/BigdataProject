package vo;

public class MemberVO {
	private String memId;
	private String memName;
	private String memPw;
	private String memGender;
	private String memEmail;
	private int memRole;
	
	
		
	public MemberVO() {
		super();
	}
	public MemberVO(String memId, String memName, String memPw, String memGender, String memEmail, int memRole) {
		super();
		this.memId = memId;
		this.memName = memName;
		this.memPw = memPw;
		this.memGender = memGender;
		this.memEmail = memEmail;
		this.memRole = memRole;
	}
	public MemberVO(String memId, String memName, String memPw, String memGender, String memEmail) {
		super();
		this.memId = memId;
		this.memName = memName;
		this.memPw = memPw;
		this.memGender = memGender;
		this.memEmail = memEmail;
	}
	public String getMemId() {
		return memId;
	}



	public void setMemId(String memId) {
		this.memId = memId;
	}



	public String getMemName() {
		return memName;
	}



	public void setMemName(String memName) {
		this.memName = memName;
	}



	public String getMemPw() {
		return memPw;
	}



	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}



	public String getMemGender() {
		return memGender;
	}



	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}



	public String getMemEmail() {
		return memEmail;
	}



	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}



	public int getMemRole() {
		return memRole;
	}



	public void setMemRole(int memRole) {
		this.memRole = memRole;
	}



	@Override
	public String toString() {
		return "MemberVO [memId=" + memId + ", memName=" + memName + ", memPw=" + memPw + ", memGender=" + memGender
				+ ", memEmail=" + memEmail + ", memRole=" + memRole + "]";
	}



	
}
