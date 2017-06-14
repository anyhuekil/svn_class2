package springweb.d01_board.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import springweb.d01_board.vo.Quebank;

@Repository
public interface A02_QuebankDao {
/*
A02_QuebankDao
insertQuebank
list
 * */
	
	public void insertQuebank(Quebank ins);
	public ArrayList<Quebank> list(Quebank sch);
}
