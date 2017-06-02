package application.view;

import java.util.ArrayList;
import application.model.*;
import application.util.*;
import application.Main;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class TableViewController {
	@FXML
	private Button btnSearch;
	@FXML
	private TextField txtSearch;
	private Main main;
	private ObservableList<Data> dataList;
	
	@FXML
	public void dataSearch(){
		Data vo = new Data();
		DbController dao = new DbController();	
		String aa = txtSearch.getText().toString();
		vo.setOverallQual(Integer.parseInt(aa));
		vo.setOverallCond(Integer.parseInt(aa));
		vo.setSalePrice(Integer.parseInt(aa));
		dataList = dao.search(vo);
		main.columnView(dataList);
	}
	
	public void setMain(Main main){
		this.main = main;
	}
}
