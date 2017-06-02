package springweb.z01_dto;

import java.util.ArrayList;

public class DailySchedule {
	private String date;
	private ArrayList<Schedule> schList;
	public DailySchedule() {
	}
	public DailySchedule(String date, ArrayList<Schedule> schList) {
		this.date = date;
		this.schList = schList;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public ArrayList<Schedule> getSchList() {
		return schList;
	}
	public void setSchList(ArrayList<Schedule> schList) {
		this.schList = schList;
	}
	public void showSchedule() {
		System.out.println(date+" 일과 계획");
		if(schList!=null && !schList.isEmpty()){
			for(Schedule s : schList){
				System.out.println(s);
			}
		}
	}

}
