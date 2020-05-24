package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

public class MemberDao {
	Connection conn;
	String pattern = "{'mId':'%s', 'mName':'%s', 'rDate':'%s', 'grade':'%s'},"; 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public MemberDao(){
		conn = DBConn.getConn();
	}
	
	public boolean login(MemberVo vo) {
		boolean flag = false;
		String sql = "select mId, pwd from member1 where mId=? and pwd=?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getmId());
			ps.setString(2, vo.getPwd());
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) { //아이디와 비밀번호가 DB에 있으면
				flag = true;
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			return flag;
		}
	}
	
	public String select(String findStr) {
		String json = null;
		String sql = "select mId, mName, to_char(rDate, 'rrrr-mm-dd') rDate, grade" 
				   + " from member1 where mId like ? or lower(mName) like lower(?) order by mName";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + findStr + "%");
			ps.setString(2, "%" + findStr + "%");
			ResultSet rs = ps.executeQuery();
			
			StringBuilder sb = new StringBuilder();
			sb.append("[");
			while(rs.next()) {
				String mId =   rs.getString("mId"); 
				String mName = rs.getString("mName"); 
				String rDate = rs.getString("rDate"); 
				String grade = rs.getInt("grade") + ""; 
				String data = String.format(pattern, mId, mName, rDate, grade);
				sb.append(data);
			}
			json = sb.toString();
			if(json.length()>1){
				json = json.replaceAll("\'", "\"");
				json = json.substring(0, json.length()-1);
			}
			json += "]";
			
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return json;
		}
	}
	
	public String insert(MemberVo vo) {
		String msg = "회원이 등록되었습니다.";
		try {
			String sql = "insert into member1 values(?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getmId());
			ps.setString(2, vo.getmName());
			ps.setString(3, sdf.format(vo.getrDate()));
			ps.setInt(4, vo.getGrade());
			
			int r = ps.executeUpdate();
			if(r<1) {
				throw new Exception();
			}
		} catch (Exception e) {
			msg = e.toString();
		}finally {
			return msg;			
		}
	}
	
	public String insert2(MemberVo2 vo) { //insert_r_bean 때문에 임시로 만듬.
		String msg = "회원이 등록되었습니다.";
		try {
			String sql = "insert into member1 values(?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getmId());
			ps.setString(2, vo.getmName());
			ps.setString(3, vo.getrDate());
			ps.setInt(4, vo.getGrade());
			
			int r = ps.executeUpdate();
			if(r<1) {
				throw new Exception();
			}
		} catch (Exception e) {
			msg = e.toString();
		}finally {
			return msg;			
		}
	}
	
	public MemberVo view(String mId) {
		MemberVo vo = new MemberVo();
		try {
			String sql = "select * from member1 where mId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, mId);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				vo.setmId(rs.getString("mId"));
				vo.setmName(rs.getString("mName"));
				vo.setrDate(rs.getDate("rDate"));
				vo.setGrade(rs.getInt("grade"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			return vo;			
		}
	}
	
	public String update(MemberVo vo) {
		String msg = "정보가 수정되었습니다.";
		String sql = "update member1 set mName=?, rDate=?, grade=? where mId=?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getmName());
			ps.setString(2, sdf.format(vo.getrDate()));
			ps.setInt(3, vo.getGrade());
			ps.setString(4, vo.getmId());
			
			int r = ps.executeUpdate();
			
			if(r<1) {
				throw new Exception();
			}
			
			ps.close();
			conn.close();
		}catch (Exception e) {
			msg = e.toString();
		}finally {
			return msg;			
		}
	}
	
	public String delete(String mId) {
		String msg = "회원정보가 삭제되었습니다.";
		String sql = "delete from member1 where mId=?";
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, mId);
			
			int r = ps.executeUpdate();
			if(r<1) {
				throw new Exception("자료 삭제 중 예외가 발생했습니다.");
			}
			ps.close();
			conn.close();
		} catch (Exception e) {
			msg = e.toString();
		}finally {
			return msg;			
		}
	}
}


