package vo;

public class CompanyAnalVO {
	private String comName;
	private double dominance;
	private double influence;
	private double steadiness;
	private double conscientious;
	
	
	
	public CompanyAnalVO() {
		super();
	}

	public CompanyAnalVO(String comName, double dominance, double influence, double steadiness, double conscientious) {
		super();
		this.comName = comName;
		this.dominance = dominance;
		this.influence = influence;
		this.steadiness = steadiness;
		this.conscientious = conscientious;
	}



	public String getComName() {
		return comName;
	}



	public void setComName(String comName) {
		this.comName = comName;
	}



	public double getDominance() {
		return dominance;
	}



	public void setDominance(double dominance) {
		this.dominance = dominance;
	}



	public double getInfluence() {
		return influence;
	}



	public void setInfluence(double influence) {
		this.influence = influence;
	}



	public double getSteadiness() {
		return steadiness;
	}



	public void setSteadiness(double steadiness) {
		this.steadiness = steadiness;
	}



	public double getConscientious() {
		return conscientious;
	}



	public void setConscientious(double conscientious) {
		this.conscientious = conscientious;
	}



	@Override
	public String toString() {
		return "CompanyAnalVO [comName=" + comName + ", dominance=" + dominance + ", influence=" + influence
				+ ", steadiness=" + steadiness + ", conscientious=" + conscientious + "]";
	}
	
	
}
