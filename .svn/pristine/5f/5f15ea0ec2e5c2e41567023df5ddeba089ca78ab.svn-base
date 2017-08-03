package springweb.i02_calen;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_CalenSrv {
	@Autowired(required=false)
	private A03_CalenDao dao;
	
	public ArrayList<Calendar> list(){
		return dao.list();
	}	
	public void insert(Calendar insert){
		dao.insert(insert);
	}	
}
