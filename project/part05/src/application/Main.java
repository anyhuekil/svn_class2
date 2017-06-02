/* 
	<참고사항>
	
	EarlGrey SemiProject
		1) 프로젝트 구조 => application, application.view, application.model, application.util
	
	CSS 적용하기 소스
	scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());


	<이슈사항> ex) 1. 97줄 - 클래스를 찾을 수 없음
	1. 
	2.
	3.
 
*/

package application;
	
import java.util.*;
import application.view.MainController;
import application.view.TableViewController;
import application.model.Data;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.stage.Stage;
import javafx.util.Callback;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;

public class Main extends Application {
	
	private Stage primaryStage;
	private Stage secondaryStage;
	private Scene secondaryScene;
	private BorderPane mainPage;
	private AnchorPane tableView;
	private TableView table;
	
	@Override
	public void start(Stage primaryStage) {
		
		this.primaryStage = primaryStage;
		fxlogin();
		
	}
	
	// 로그인
	public void fxlogin(){
		try {

			Parent root = FXMLLoader.load(getClass().getResource("/application/view/login.fxml"));
            Scene scene = new Scene(root);

            primaryStage.setScene(scene);
            primaryStage.show();

		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 기본 화면 
	public void basic(){
		try {
			FXMLLoader loader = new FXMLLoader();
			loader.setLocation(getClass().getResource("/application/view/Main.fxml"));
	        mainPage = loader.load(); // 이슈 1번
	        secondaryStage = new Stage();
	        //tableView(); // 메인 페이지에 테이블 뷰 셋팅
	        secondaryScene = new Scene(mainPage);
	        secondaryStage.setScene(secondaryScene);
	        secondaryStage.setResizable(true);
	        secondaryStage.show();
	        MainController control = loader.getController();
	        control.setMain(this);

		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 테이블 뷰 화면
	public void tableView(){
		FXMLLoader loader = new FXMLLoader();
		try {
			loader.setLocation(getClass().getResource("/application/view/tableView.fxml")); // 이슈 1번
			tableView = (AnchorPane) loader.load();
			table = (TableView)tableView.getChildren().get(0);
	        mainPage.setCenter(tableView);	        
	        secondaryScene.setRoot(mainPage);
	        secondaryStage.setScene(secondaryScene);
	        secondaryStage.show();		   
	        TableViewController tc = loader.getController();
	        tc.setMain(this);        
	        
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 컬럼 바인딩 http://www.java2s.com/Tutorials/Java/JavaFX/0650__JavaFX_TableView.htm
	public void columnView(ArrayList<Data> dataList){
		//Scene node = tableView.getScene();
		TableColumn col01 = new TableColumn("overallqual");
		TableColumn col02 = new TableColumn("overallcond");
		TableColumn col03 = new TableColumn("saleprice");
		for(Data d : dataList){
			col01.setCellValueFactory(new PropertyValueFactory<>(String.valueOf(d.getOverallQual())));
			col02.setCellValueFactory(new PropertyValueFactory<>(String.valueOf(d.getOverallCond())));
			col03.setCellValueFactory(new PropertyValueFactory<>(String.valueOf(d.getSalePrice())));
			System.out.println("데이터 : " + String.valueOf(d.getOverallQual()));
		}
		table.getColumns().add(col01);
		table.getColumns().add(col02);
		table.getColumns().add(col03);
	
	}
	
	public static void main(String[] args) {
		launch(args);
	}
	
}
