package springweb.c01_database.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.c01_database.repository.A01_EmpRep;
import springweb.c01_database.repository.A02_DeptDao;
import springweb.z01_dto.Dept;
import springweb.z01_dto.Emp;

@Service
public class A01_EmpService {
	@Autowired(required=false)
	private A01_EmpRep dao;
	
	@Autowired(required=false)
	private A02_DeptDao ddao;
	
	public ArrayList<Emp> empList(){
		
		return dao.emplist();
	}
	public ArrayList<Dept> deptList(){
		
		return ddao.deptList();
	}	
	
}