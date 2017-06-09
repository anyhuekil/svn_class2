package springweb.z01_dto;

import java.util.ArrayList;
// springweb.z01_dto.DailySchedule
public class DailySchedule {
	private String date;
	private ArrayList<Schedule> schList;
	
	public DailySchedule() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DailySchedule(String date) {
		this.date = date;
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
	public void showSchedule(){
		System.out.println(date+" 일과계획");
		for(Schedule sch:schList){
			System.out.println(sch.getTime()+"\t"+sch.getContent());
		}
	}
	
}
