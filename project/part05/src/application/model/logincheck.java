/*

	Complete - 수정사항 없음

*/
package application.model;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class logincheck {

	private final StringProperty id;
    private final StringProperty username;
    private final StringProperty password;
    
    public logincheck(){
    	this(null, null, null);
    }
    
	public logincheck(String id, String username, String password) {
	
		this.id = new SimpleStringProperty(id);
		this.username = new SimpleStringProperty(username);
		this.password = new SimpleStringProperty(password);
	}

	public String getId() {
		return id.get();
	}
	
	public void setId(String id){
		this.id.set(id);
	}
	
	public StringProperty idProperty() {
		return id;
	}

	public String getUsername() {
		return username.get();
	}
	
	public void setUsername(String username){
		this.username.set(username);
	}
	
	public StringProperty usernameProperty() {
		return username;
	}
	
	public String getPassword() {
		return password.get();
	}
	
	public void setPassword(String password){
		this.password.set(password);
	}
	
	public StringProperty passwordProperty() {
		return password;
	}
	  
}
