package application.view;

import javafx.fxml.FXML;
import javafx.scene.control.*;
import application.Main;

public class MainController {
	
	private Main main;
	
	@FXML
	public void showTableView(){
		main.tableView();
	}
	
	public void setMain(Main main){
		this.main = main;
	}
	
	@FXML
    private void initialize() {
		// TODO Auto-generated method stub		
	}
	
}
