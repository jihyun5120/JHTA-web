package mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class DynamicSql {
	SqlSession session;
	public DynamicSql() {}
	
	public void ifTest() {
		session = BoardFactory.getFactory().openSession();
		String findStr = "h";
		List<BoardVo> list = session.selectList("dynamic.if_test", findStr);
		System.out.println("---------------------------------------");
		for (BoardVo vo : list) {
			System.out.println(vo.getSerial() + "-" + vo.getSubject());
		}
		System.out.println("---------------------------------------");
		findStr = null;
		list = session.selectList("dynamic.if_test", findStr);
		for (BoardVo vo : list) {
			System.out.println(vo.getSerial() + "-" + vo.getSubject());
		}
		session.close();
	}
	
	public void chooseTest() {
		session = BoardFactory.getFactory().openSession();
		String findStr = "안";
		int cnt = session.selectOne("dynamic.choose_test", findStr);
		System.out.println("findStr = 안 : " + cnt);
		
		findStr = "h";
		cnt = session.selectOne("dynamic.choose_test", findStr);
		System.out.println("findStr = h : " + cnt);
		
		session.close();
	}
	
	public void whereTest() {
		/*
		 * <where> ... </where>
		 * 1. 만약에 만족하는 데이터가 없다면 불필요한 where절을 생략해줌.
		 * 2. 만약에 where안에 시작이 and나 or일 때 불필요한 and, or이면 경우 생략.  
		 */
		
		session = BoardFactory.getFactory().openSession();
		BoardVo vo = new BoardVo();
		int cnt = 0;
		
		cnt = session.selectOne("dynamic.where_test", vo);
		System.out.println("cnt1 = " + cnt);
		
		vo.setSerial(224);
		vo.setId(null);
		cnt = session.selectOne("dynamic.where_test", vo);
		System.out.println("cnt2 = " + cnt);
		
		vo.setSerial(0);
		vo.setId("choi");
		cnt = session.selectOne("dynamic.where_test", vo);
		System.out.println("cnt3 = " + cnt);
		
		vo.setSerial(224);
		vo.setId("최지현");
		cnt = session.selectOne("dynamic.where_test", vo);
		System.out.println("cnt4 = " + cnt);
		
		session.close();
	}
	
	public void setTest() {
		/*
		 * <set> ... </set>
		 * 1. update절의 set절을 동적으로 생성.
		 * 2. 불필요한 ,등을 제거하는 기능.
		 */
		session = BoardFactory.getFactory().openSession();
		BoardVo vo = new BoardVo();
		vo.setSubject("동적 sql로 바꾼 제목!");
		vo.setContent(null);
		vo.setSerial(100);
		session.update("dynamic.set_test", vo);
		
		vo.setSubject("동적 sql로 바꾼 제목!");
		vo.setContent("동적 sql로 바꾼 내용!");
		vo.setSerial(101);
		session.update("dynamic.set_test", vo);
		
		session.commit();
		session.close();
	}
	public void trimTest() {
		/*
		 * <where/>,<set/>의 요소보다 다양한 특정 요소들을 추가하거나 제거할 수 있음.
		 * <trim prefix = '앞에 붙일 단어' suffix = '뒤에 붙일 단어' prefixOverrides = '제거할 단어1 | 제거할 단어2, ... '
		 * 		suffixOverrides = '뒤에서 제거할 단어1 | 뒤에서 제거할 단어2, ... '>
		 * </trim>
		 */
		session = BoardFactory.getFactory().openSession();
		BoardVo vo = new BoardVo();
		vo.setSubject("안");
		int cnt = session.selectOne("dynamic.trim_test", vo);
		System.out.println(cnt);
		
		
	}
	public void foreachTest() {
		/*
		 * <foreach> collection = 'collection' item = '변수' index = 'key' 
		 * 		open = '반복하기 전에 붙일 문자' close = '반복 후 붙일 문자' separator = 'item사이에 끼울 구분자 기호'>
		 * </foreach>
		 * -- index : collection의 종류가 Map이면 key, collection의 종류가 List이면 index.
		 * -- item : collection의 종류가 Map, List 모두  value. 
		 */
		session = BoardFactory.getFactory().openSession();
		String[] value = {"최", "댓", "choi"};
		List<BoardVo> list = session.selectList("dynamic.foreach_test", value);
		for (BoardVo vo : list) {
			System.out.println(vo.getId() + " - " + vo.getSubject());
		}
		session.close();
	}
	
	public void plSqlTest() {
		session = BoardFactory.getFactory().openSession();
		BoardVo vo = new BoardVo();
		vo.setSerial(1);
		session.selectOne("dynamic.pl_sql", vo);
		System.out.println(vo.getId());
		System.out.println(vo.getSubject());
		System.out.println(vo.getmDate());
		System.out.println(vo.getHit());
		
		session.close();
	}
	
	public static void main(String[] args) {
		DynamicSql dSql = new DynamicSql();
		//dSql.ifTest();
		//dSql.chooseTest();
		//dSql.whereTest();
		//dSql.setTest();
		//dSql.trimTest();
		//dSql.foreachTest();
		dSql.plSqlTest();
	}
}
