package vo;

public class CompanyInterviewVO {
	private String comName;
	private int interviewNo;
	private String interviewDate;
	private String interviewLevel;
	private String interviewRole;
	private String interviewTopic;
	private String interviewQuestion;
	private String interviewAnswer;
	
	public CompanyInterviewVO() {
		super();
	}

	public CompanyInterviewVO(String comName, int interviewNo, String interviewDate, String interviewLevel,
			String interviewRole, String interviewTopic, String interviewQuestion, String interviewAnswer) {
		super();
		this.comName = comName;
		this.interviewNo = interviewNo;
		this.interviewDate = interviewDate;
		this.interviewLevel = interviewLevel;
		this.interviewRole = interviewRole;
		this.interviewTopic = interviewTopic;
		this.interviewQuestion = interviewQuestion;
		this.interviewAnswer = interviewAnswer;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public int getInterviewNo() {
		return interviewNo;
	}

	public void setInterviewNo(int interviewNo) {
		this.interviewNo = interviewNo;
	}

	public String getInterviewDate() {
		return interviewDate;
	}

	public void setInterviewDate(String interviewDate) {
		this.interviewDate = interviewDate;
	}

	public String getInterviewLevel() {
		return interviewLevel;
	}

	public void setInterviewLevel(String interviewLevel) {
		this.interviewLevel = interviewLevel;
	}

	public String getInterviewRole() {
		return interviewRole;
	}

	public void setInterviewRole(String interviewRole) {
		this.interviewRole = interviewRole;
	}

	public String getInterviewTopic() {
		return interviewTopic;
	}

	public void setInterviewTopic(String interviewTopic) {
		this.interviewTopic = interviewTopic;
	}

	public String getInterviewQuestion() {
		return interviewQuestion;
	}

	public void setInterviewQuestion(String interviewQuestion) {
		this.interviewQuestion = interviewQuestion;
	}

	public String getInterviewAnswer() {
		return interviewAnswer;
	}

	public void setInterviewAnswer(String interviewAnswer) {
		this.interviewAnswer = interviewAnswer;
	}

	@Override
	public String toString() {
		return "CompanyInterviewVO [comName=" + comName + ", interviewNo=" + interviewNo + ", interviewDate="
				+ interviewDate + ", interviewLevel=" + interviewLevel + ", interviewRole=" + interviewRole
				+ ", interviewTopic=" + interviewTopic + ", interviewQuestion=" + interviewQuestion
				+ ", interviewAnswer=" + interviewAnswer + "]";
	}
	
	
	
}
