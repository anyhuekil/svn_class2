package javaexp.a12_collection;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class A07_mapCol {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		Map 컬렉션 생성 <key, value>
//		일반적을 key, value는 다음과 같은 type으로 설정한다.
//		key : 문자열
//		value : 객체
		HashMap<String, Integer> map = new HashMap<String, Integer>();
//		map.put( key, value) 객체 저장
		String name="홍길동";
		Integer num=70;
		map.put("홍길동", 70);
		map.put("신길동", 80);
		map.put("홍길동", 90); // 동일한 key값은 마지막 value이 할당된다.
		map.put("마영수", 100);
		System.out.println("현재 map  entry의 갯수:"+map.size());
//		특정한 key로 값가져오기.. get(key)
		System.out.println("홍길동key의 값 가져오기:"+map.get("홍길동"));
//		전체 데이터 가져오기..
//		1. key을 통해서 처리하기.. keyset() : 전체 key값을 Set형태로 가져오기
		Set<String> keyset = map.keySet();
//		Set은 iterator를 통해서 데이터를 가져온다.
		Iterator<String> iter = keyset.iterator();
		String key="";
		Integer value=0;
		while(iter.hasNext()){
			key=iter.next();
			value=map.get(key);
			System.out.println(key+":"+value);
		}
//		remove(key) 객체 삭제
		map.remove("홍길동");
		System.out.println("현재 map  entry의 갯수:"+map.size());
//		2. Map.Entry을 통해 key,value를 동시에 가져와서 처리..
//		entrySet() : Set형태의 Map.Entry 가져옮.
		Set< Map.Entry<String, Integer>  > entrySet=map.entrySet();
//		Set형태이기에 iterator통해서 데이터 처리가 가능
		Iterator< Map.Entry<String, Integer> > entryIter=entrySet.iterator();
		
		// hasNext() 반복처리.. next()  값가져오기..
		// getKey() :  key가져오기.. getValue() : value 가져오기
		Map.Entry<String, Integer> entry=null;
		String inkey="";
		Integer invalue=0;
		System.out.println("==== Map.Entry ====");
		while(entryIter.hasNext()){
			entry=entryIter.next(); // 단위객체를 가져옮
			inkey=entry.getKey();// key 할당
			invalue=entry.getValue();//value 할당
			System.out.println(inkey+":"+invalue);		
		}
		// clear() 포함된 map 객체 삭제 처리
		map.clear();
		System.out.println("삭제 후, 현재 map  entry의 갯수:"+map.size());
	}

}
