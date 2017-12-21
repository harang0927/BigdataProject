package vo;

public class MemberAnalVO {
	private String memId;
	private double dominance;
	private double influence;
	private double steadiness;
	private double conscientious;

	
	
	public MemberAnalVO() {
		super();
	}

	public MemberAnalVO(String memId, double dominance, double influence, double steadiness, double conscientious) {
		super();
		this.memId = memId;
		this.dominance = dominance;
		this.influence = influence;
		this.steadiness = steadiness;
		this.conscientious = conscientious;
	}


	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
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
		return "MemberAnalVO [memId=" + memId + ", dominance=" + dominance + ", influence=" + influence
				+ ", steadiness=" + steadiness + ", conscientious=" + conscientious + "]";
	}
	

	
	
}
