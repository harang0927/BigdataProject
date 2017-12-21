package vo;

public class CompanyIncomeVO {
	private String comName;
	private long income16;
	private long income15;
	private long income14;
	private long profit16;
	private long profit15;
	private long profit14;
	
	public CompanyIncomeVO() {
		super();
	}

	public CompanyIncomeVO(String comName, long income16, long income15, long income14, long profit16, long profit15,
			long profit14) {
		super();
		this.comName = comName;
		this.income16 = income16;
		this.income15 = income15;
		this.income14 = income14;
		this.profit16 = profit16;
		this.profit15 = profit15;
		this.profit14 = profit14;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public long getIncome16() {
		return income16;
	}

	public void setIncome16(long income16) {
		this.income16 = income16;
	}

	public long getIncome15() {
		return income15;
	}

	public void setIncome15(long income15) {
		this.income15 = income15;
	}

	public long getIncome14() {
		return income14;
	}

	public void setIncome14(long income14) {
		this.income14 = income14;
	}

	public long getProfit16() {
		return profit16;
	}

	public void setProfit16(long profit16) {
		this.profit16 = profit16;
	}

	public long getProfit15() {
		return profit15;
	}

	public void setProfit15(long profit15) {
		this.profit15 = profit15;
	}

	public long getProfit14() {
		return profit14;
	}

	public void setProfit14(long profit14) {
		this.profit14 = profit14;
	}

	@Override
	public String toString() {
		return "CompanyIncomeVO [comName=" + comName + ", income16=" + income16 + ", income15=" + income15
				+ ", income14=" + income14 + ", profit16=" + profit16 + ", profit15=" + profit15 + ", profit14="
				+ profit14 + "]";
	}
	
	
	
}
