package client.ws;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/client_ws")
public class WS_client {
	@OnOpen
	public void handleOpen(){
		System.out.println("Client_sever is now connected...");
		}
	
	@OnMessage
	public String handleMessage(String message){
		String answer = server.ws.WS_server.getAnswer();
		System.out.println(message);
		String result=null;
		if( message.equals(answer))
			result = "correct";
		else
			result = "wrong";
		return result;
		}
	
	@OnClose
	public void handleClose(){
		System.out.println("client is now disconnected...");
		}
	
	@OnError
	public void handleError(Throwable t){
		t.printStackTrace();
		}
	}
