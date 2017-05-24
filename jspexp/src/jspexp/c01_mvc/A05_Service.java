package jspexp.c01_mvc;

import jspexp.z01_database.A04_MemeberDao;
import jspexp.z02_vo.Member;
// A05_Service
public class A05_Service {
	// DB에 접속해서 id와 password 유효한지을 확인하는
	// 메서드 구현.
	// 1. 비지니스 로직처리..
//	   2. DB 연결 호출.
//	     A04_MemeberDao getMember(Member sch)
	private A04_MemeberDao dao;
	// 유효성만 체크
	public boolean isValid(Member vo){
		boolean hasData=false;
		dao= new A04_MemeberDao();
		// 해당 db에서 데이터가 있을 때, 유효
		if(dao.getMember(vo)!=null){
			hasData=true;
		}
		return hasData;
	}
	// 연관된 data 가져옮..
	public Member getMember(Member vo){
		dao= new A04_MemeberDao();
		return dao.getMember(vo);
	}
}
