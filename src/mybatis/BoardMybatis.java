package mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bean.Page;

public class BoardMybatis {
	SqlSession sqlSession;
	
	public BoardMybatis() {
		sqlSession = BoardFactory.getFactory().openSession();
	}
	
	public List<BoardVo> select(Page p){
		List<BoardVo> list = null;
		try {
			list = sqlSession.selectList("board.select", p);
			
			for(BoardVo vo : list) {
				System.out.println("----------------------------");
				System.out.println(vo.getId());
				System.out.println(vo.getSubject());
				System.out.println(vo.getmDate());
				System.out.println("----------------------------");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
			return list;
		}
	}
	
	public static void main(String[] args) {
		BoardMybatis bm = new BoardMybatis();
		Page p = new Page();
		p.setFindStr("어");
		bm.select(p);
	}
}
