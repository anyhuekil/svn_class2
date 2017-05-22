package vo;

public class PlayerInfo {
	private String pid;
	private int mchoice;
	private String pass;
	private String pname;
	private String email;
	private String tel;
	private int totbet;
	private int totbenefit;
	private int totlose;
	private int curmoney;
	private int first;
	private int second;
	private int third;
	
	public PlayerInfo(){}
	
	public PlayerInfo(String pid, int mchoice, String pass, String email, String tel, int totbet, int totbenefit,
			int totlose, int curmoney, int first, int second, int third) {
		this.pid = pid;
		this.mchoice = mchoice;
		this.pass = pass;
		this.email = email;
		this.tel = tel;
		this.totbet = totbet;
		this.totbenefit = totbenefit;
		this.totlose = totlose;
		this.curmoney = curmoney;
		this.first = first;
		this.second = second;
		this.third = third;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public int getMchoice() {
		return mchoice;
	}

	public void setMchoice(int mchoice) {
		this.mchoice = mchoice;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getTotbet() {
		return totbet;
	}

	public void setTotbet(int totbet) {
		this.totbet = totbet;
	}

	public int getTotbenefit() {
		return totbenefit;
	}

	public void setTotbenefit(int totbenefit) {
		this.totbenefit = totbenefit;
	}

	public int getTotlose() {
		return totlose;
	}

	public void setTotlose(int totlose) {
		this.totlose = totlose;
	}

	public int getCurmoney() {
		return curmoney;
	}

	public void setCurmoney(int curmoney) {
		this.curmoney = curmoney;
	}

	public int getFirst() {
		return first;
	}

	public void setFirst(int first) {
		this.first = first;
	}

	public int getSecond() {
		return second;
	}

	public void setSecond(int second) {
		this.second = second;
	}

	public int getThird() {
		return third;
	}

	public void setThird(int third) {
		this.third = third;
	}
	
	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	
}
