package springweb.c01_database.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.c01_database.repository.A01_EmpRep;
import springweb.c01_database.repository.A02_DeptDao;
import springweb.z01_dto.Dept;
import springweb.z01_dto.Emp;

@Service
public class A02_DeptService {
	
	@Autowired(required=false)
	private A02_DeptDao dao;
	
	public ArrayList<Dept> deptList(){
		
		return dao.deptList();
	}	
	public Dept deptOne(int deptno){
		return dao.deptOne(deptno);
	}
	public void updateDept(Dept upt){
		dao.updateDept(upt);
	}
	
}
