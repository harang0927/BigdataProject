package vo;

public class CompanyEmployeeVO {
	private String comName;
	private int annualSalary;
	private double resignationRate;
	private int maleNum;
	private int femaleNum;
	private int femaleRegular;
	private int maleRegular;
	private int femaleTemporary;
	private int maleTemporary;
	private double mworkYears;
	private double fworkYears;
	
	
	
	public CompanyEmployeeVO() {
		super();
	}

	public CompanyEmployeeVO(String comName, int annualSalary, double resignationRate, int maleNum, int femaleNum,
			int femaleRegular, int maleRegular, int femaleTemporary, int maleTemporary, double mworkYears,
			double fworkYears) {
		super();
		this.comName = comName;
		this.annualSalary = annualSalary;
		this.resignationRate = resignationRate;
		this.maleNum = maleNum;
		this.femaleNum = femaleNum;
		this.femaleRegular = femaleRegular;
		this.maleRegular = maleRegular;
		this.femaleTemporary = femaleTemporary;
		this.maleTemporary = maleTemporary;
		this.mworkYears = mworkYears;
		this.fworkYears = fworkYears;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public int getAnnualSalary() {
		return annualSalary;
	}

	public void setAnnualSalary(int annualSalary) {
		this.annualSalary = annualSalary;
	}

	public double getResignationRate() {
		return resignationRate;
	}

	public void setResignationRate(double resignationRate) {
		this.resignationRate = resignationRate;
	}

	public int getMaleNum() {
		return maleNum;
	}

	public void setMaleNum(int maleNum) {
		this.maleNum = maleNum;
	}

	public int getFemaleNum() {
		return femaleNum;
	}

	public void setFemaleNum(int femaleNum) {
		this.femaleNum = femaleNum;
	}

	public int getFemaleRegular() {
		return femaleRegular;
	}

	public void setFemaleRegular(int femaleRegular) {
		this.femaleRegular = femaleRegular;
	}

	public int getMaleRegular() {
		return maleRegular;
	}

	public void setMaleRegular(int maleRegular) {
		this.maleRegular = maleRegular;
	}

	public int getFemaleTemporary() {
		return femaleTemporary;
	}

	public void setFemaleTemporary(int femaleTemporary) {
		this.femaleTemporary = femaleTemporary;
	}

	public int getMaleTemporary() {
		return maleTemporary;
	}

	public void setMaleTemporary(int maleTemporary) {
		this.maleTemporary = maleTemporary;
	}

	public double getMworkYears() {
		return mworkYears;
	}

	public void setMworkYears(double mworkYears) {
		this.mworkYears = mworkYears;
	}

	public double getFworkYears() {
		return fworkYears;
	}

	public void setFworkYears(double fworkYears) {
		this.fworkYears = fworkYears;
	}

	@Override
	public String toString() {
		return "CompanyEmployeeVO [comName=" + comName + ", annualSalary=" + annualSalary + ", resignationRate="
				+ resignationRate + ", maleNum=" + maleNum + ", femaleNum=" + femaleNum + ", femaleRegular="
				+ femaleRegular + ", maleRegular=" + maleRegular + ", femaleTemporary=" + femaleTemporary
				+ ", maleTemporary=" + maleTemporary + ", mworkYears=" + mworkYears + ", fworkYears=" + fworkYears
				+ "]";
	}
	
	
	
}
