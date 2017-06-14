package springweb.d01_board.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.d01_board.repository.A02_QuebankDao;
import springweb.d01_board.vo.Board;
import springweb.d01_board.vo.Quebank;

@Service
public class A02_QuestBankService {
	@Autowired(required=false)
	private A02_QuebankDao dao;

	public void insertQuebank(Quebank ins){
		dao.insertQuebank(ins);
	}
	public ArrayList<Quebank> listQuebank(Quebank sch){
		return dao.list(sch);
	}	
}
