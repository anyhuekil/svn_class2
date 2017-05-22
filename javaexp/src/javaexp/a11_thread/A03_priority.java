package javaexp.a11_thread;

class Patient extends Thread{
	private String kind;
	public Patient(String kind) {
		this.kind = kind;
	}
	@Override
	public void run() {
		Exam p = new Exam();
		p.proc();
	}	

}
class Exam{
	synchronized void proc(){
		for(int prcCnt=1;prcCnt<=10;prcCnt++){
			System.out.print(" 병원에서 ");
					System.out.print(prcCnt);
							System.out.println("단계 조치를 하였습니다.");
		}		
	}	
}
public class A03_priority {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Patient[] arr={new Patient("치과환자"),new Patient("일반환자"),
				new Patient("응급환자")};
		// 해당 쓰레드에 대한 우선순위를 높이 처리..
		arr[2].setPriority(10);
		for(Patient p:arr){
			p.start();
		}
	}

}
