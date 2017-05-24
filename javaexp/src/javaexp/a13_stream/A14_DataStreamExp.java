package javaexp.a13_stream;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class A14_DataStreamExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		FileOutputStream fos=null;
		DataOutputStream dos=null;
		
		FileInputStream fis=null;
		DataInputStream dis=null;
		
		
		try {
			String fileName="C:/a01_prog/eclipse/workspace_server/javaexp/src/javaexp/a13_stream/prodData.dat";
			fos= new FileOutputStream(fileName);
			dos= new DataOutputStream(fos);
			dos.writeUTF("사과");
			dos.writeInt(3000);
			dos.writeInt(2);
			dos.writeUTF("바나나");
			dos.writeInt(4000);
			dos.writeInt(3);
			dos.writeUTF("딸기");
			dos.writeInt(12000);
			dos.writeInt(3);			
			fis=new FileInputStream(fileName);
			dis=new DataInputStream(fis);
			
			for(int cnt=1;cnt<=3;cnt++){
				System.out.print(dis.readUTF()+"\t");
				System.out.print(dis.readInt()+"\t");
				System.out.println(dis.readInt());
			}
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(Exception e){
			System.out.println("예외 발생");
		}finally{

			try {
				dos.flush();
				dos.close();
				fos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

}
