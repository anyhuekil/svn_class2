package springweb.z01_dto;

public class BookStore {
	private String bsname;
	private Book bk;
	public BookStore() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookStore(Book bk) {
		this.bk = bk;
	}
	public void setBsname(String bsname) {
		this.bsname = bsname;
	}
	public void displayBook(){
		System.out.println(bsname+" 서점에서 ");
		if(bk!=null){
			System.out.println("오늘 전시하는 도서는 ");
			System.out.println(bk.getName());
			System.out.println("가격은 "+bk.getPrice()+"원");
		}
	}
	
}
