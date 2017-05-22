package javahomework.a10_parkyunha;

public class Schedule {
	private String plan;
	private String status;
	private String etc;
	private String clock;
	
	public Schedule(String clock, String plan, String status, String etc) {
		super();
		this.clock = clock;
		this.plan = plan;
		this.status = status;
		this.etc = etc;
	}
	
	public String getClock() {
		return clock;
	}

	public void setClock(String clock) {
		this.clock = clock;
	}

	public String getPlan() {
		return plan;
	}
	public void setPlan(String plan) {
		this.plan = plan;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	
	
}
