package application.view;

import java.util.ArrayList;

import application.Main;
import application.model.*;
import application.util.*;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class TableViewController {
	
	@FXML
	private Button btnSearch;
	@FXML
	private TextField txtSearch;
	private Main main;
	private ArrayList<Data> dataList;
	
	@FXML
	public void dataSearch(){
		Data vo = new Data();
		DbController dao = new DbController();	
		vo.setOverallQual(Integer.parseInt(txtSearch.getText()));
		vo.setOverallCond(Integer.parseInt(txtSearch.getText()));
		vo.setSalePrice(Integer.parseInt(txtSearch.getText()));
		dataList = dao.search(vo);
		main.columnView(dataList);
	}
	
	public void setMain(Main main){
		this.main = main;
	}

}
