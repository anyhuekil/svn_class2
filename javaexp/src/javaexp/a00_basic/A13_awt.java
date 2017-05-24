package javaexp.a00_basic;

import java.awt.*;

class ShowJava{
	// 자바에서 화면처리..
	Frame frame;
	Button btnWest;
	Button btnEast;
	Button btnNorth;
	Button btnSouth;
	Button btnCenter;
	
	ShowJava(){
		frame = new Frame("자바도 화면을!!");
		btnWest = new Button("서쪽버튼");
		btnEast = new Button("동쪽버튼");
		btnNorth = new Button("북쪽버튼");
		btnSouth = new Button("남쪽버튼");
		btnCenter = new Button("중앙버튼");
	}
	void launchFrame(){
		// frame에 서쪽에..
		frame.add(btnWest,"West");
		frame.add(btnEast,"East");
		frame.add(btnNorth,"North");
		frame.add(btnSouth,"South");
		frame.add(btnCenter,"Center");
		frame.setSize(300, 300);
		frame.setVisible(true);
	}	
}
public class A13_awt {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ShowJava sj = new ShowJava();
		sj.launchFrame();
	}

}
