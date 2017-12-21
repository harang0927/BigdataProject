package vo;

public class AddCompanyBoardVO {
	private MemberVO memId;
	private int addCompanyNo;
	private String writeDate;
	private String title;
	private String content;
	private int hits;
	
	public AddCompanyBoardVO(MemberVO memId, int addCompanyNo, String writeDate, String title, String content,
			int hits) {
		super();
		this.memId = memId;
		this.addCompanyNo = addCompanyNo;
		this.writeDate = writeDate;
		this.title = title;
		this.content = content;
		this.hits = hits;
	}
	public MemberVO getMemId() {
		return memId;
	}
	public void setMemId(MemberVO memId) {
		this.memId = memId;
	}
	public int getAddCompanyNo() {
		return addCompanyNo;
	}
	public void setAddCompanyNo(int addCompanyNo) {
		this.addCompanyNo = addCompanyNo;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	@Override
	public String toString() {
		return "AddCompanyBoardVO [memId=" + memId + ", addCompanyNo=" + addCompanyNo + ", writeDate=" + writeDate
				+ ", title=" + title + ", content=" + content + ", hits=" + hits + "]";
	}
	
	
	
}
