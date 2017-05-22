package javaexp.a05_reference;

public class A07_MultiArrayExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int [][]points=new int[5][4];
		for(int classIdx=0;classIdx<points.length;classIdx++){
			for(int ptIdx=0;ptIdx<points[classIdx].length;ptIdx++){
				points[classIdx][ptIdx]=(int)(Math.random()*101);
				System.out.println((classIdx+1)+"¹Ý "+(ptIdx+1)+"¹ø "
						+points[classIdx][ptIdx]+"Á¡");
			}
		}
	}

}
