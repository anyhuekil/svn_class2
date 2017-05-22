package javaexp.a06_object;
/* 확인예제
 * BaseballTeam 객체 클래스 팀명, 승, 무, 패, 승률
 * 출력 형태
 * @@@팀, @@승, @@무, @@패, 승률 @@@
 * 입력값이 없는 생성자를 통해 출력
 * field값을 처리한 생성자를 통해 초기 데이터 설정
 * */
class BaseballTeam{
	private String teamName;
	private int win; 	//승
	private int tie;	//무
	private int loss;	//패
	private double winRate; //승률
	public BaseballTeam(){	}
	public BaseballTeam(String teamName,int win,int tie,int loss){
		this.teamName = teamName;
		this.win = win;
		this.tie = tie;
		this.loss = loss;
		this.winRate = (double)win/(win+loss);
	}
	@Override
	public String toString() {
		String temp;
		temp = teamName +"팀,\t"+win+"승,\t"+tie+"무,\t"+loss+"패,\t승률 "+winRate;
		return temp;
	}
}
public class A05_FieldInitExp {
	public static void main(String[] args) {
		BaseballTeam hanwha = new BaseballTeam();
		BaseballTeam dusan = new BaseballTeam("두산",9,0,0);
		System.out.println(hanwha);
		System.out.println(dusan);
		// 객체배열도 이용해 보자
		System.out.println("★ ★ ★ 아래는 객체 배열로 처리함 ★ ★ ★");
		BaseballTeam[] teams = new BaseballTeam[2];
		teams[0] = new BaseballTeam();
		teams[1] = new BaseballTeam("두산",9,0,0);
		for(BaseballTeam t : teams)
			System.out.println(t);
	}
}
