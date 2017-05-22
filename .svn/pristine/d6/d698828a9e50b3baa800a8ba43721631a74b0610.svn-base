package server.ws;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/server_ws")
public class WS_server {
	private static String answer;
	
	public void answer(String answer) {
		this.answer = answer;
		}
	
	public static String getAnswer() {
		return answer;
		}

	@OnOpen
	public void handleOpen(){
		System.out.println("Manage_server is now connected...");
		}
	
	@OnMessage
	public void handleMessage(String message){    	
	System.out.println(message);
	answer = message;
	}
	@OnClose
	public void handleClose(){
		System.out.println("manager_connention is now disconnected...");
		}
	
	@OnError
	public void handleError(Throwable t){
		t.printStackTrace();
		}
	}
