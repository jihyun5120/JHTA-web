package bean;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import oracle.net.aso.p;

public class MemberDao2 {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Connection conn;
	String upload = "C:/Users/SamSung/eclipse-workspace/1907-web/WebContent/upload/";
	
	public MemberDao2() {
		conn = DBConn.getConn();
	}
	
	public String insert(MemberVo vo) {
		String msg = "회원정보가 정상적으로 저장되었습니다.";
		MemberPhoto p = null;
		try {
			String sql = "insert into member1(mId, pwd, mName, rDate, grade) values(?, ?, ?, ?, ?)";
			
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getmId());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getmName());
			ps.setString(4, sdf.format(vo.getrDate()));
			ps.setInt(5, vo.getGrade());
			
			List<MemberPhoto> list = vo.getPhotos(); //두개 이상 파일이면 하단에 만들어야 함.
			if(list.size() > 0) {
				p = list.get(0);				
			}
			
			int cnt = ps.executeUpdate();
			
			if(cnt > 0) { //member테이블에 데이터가 저장됐을 때.
				if(p != null) {
					sql = "insert into member_photo(serial, oriFile, sysFile, mId, rDate) values(seq_member_photo.nextval, ?, ?, ?, ?)";
					ps = conn.prepareStatement(sql);
					ps.setString(1, p.getOriFile());
					ps.setString(2, p.getSysFile());
					ps.setString(3, vo.getmId());
					ps.setString(4, sdf.format(vo.getrDate()));
					cnt = ps.executeUpdate();
					
					if(cnt > 0) {
						conn.commit();
					}else {
						conn.rollback();
					}
					//throw new Exception(); 오류테스트
				}
			}else {
				conn.commit();
			}
		}catch(Exception e){
			conn.rollback();
			msg = e.toString();
			//오류 났을 때 upload에 사진 파일 삭제.
			if(p != null) {
				File delFile = new File(upload + p.getSysFile());
				if(delFile.exists()) { //delFile이 존재하면.
					delFile.delete();
				}
			}
		}finally {
			try {
				conn.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return msg;			
		}
	}
	
	public String modify(MemberVo vo) {
		String msg = "회원정보가 정상적으로 수정되었습니다.";
		MemberPhoto mp = new MemberPhoto();
		String deleteFile = null; //이미지를 수정한 경우 이전 파일.
		int serial = 0;
		List<MemberPhoto> list = vo.getPhotos();
		String sql = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
			
		if(list.size() > 0) { //사진정보가 있는 경우
			mp = list.get(0); //한 건은 이렇게, 여러 건은 루핑돌리기.
		}
		try {
			conn.setAutoCommit(false);
			
			//수정전 파일명(삭제될 파일)
			if(mp != null) {
				sql = "select serial, sysFile from member_photo where mId=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, vo.getmId());
				rs = ps.executeQuery();
				
				if(rs.next()) {
					serial = rs.getInt("serial");
					deleteFile = rs.getString("sysFile");
				}
			}
			
			//기본정보 수정
			sql = "update member1 set mName=?, rDate=?, grade=? where mId=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getmName());
			ps.setString(2, sdf.format(vo.getrDate()));
			ps.setInt(3, vo.getGrade());
			ps.setString(4, vo.getmId());
			int cnt = ps.executeUpdate();
			if(cnt < 1) {
				throw new Exception("기본 정보 수정 중 오류가 발생했습니다.");
			}
			
			//기존 사진정보에 따른 분리
			if(mp != null) {
				if(deleteFile == null) { //처음 회원등록시 이미지를 첨부하지 않고 수정할 때 첨부한 경우.
					sql = "insert into member_photo(serial, mId, rDate, oriFile, sysFile) values(seq_member_photo.nextval, ?, ?, ?, ?)";
					ps = conn.prepareStatement(sql);
					ps.setString(1, vo.getmId());
					ps.setString(2, sdf.format(vo.getrDate()));
					ps.setString(3, mp.getOriFile());
					ps.setString(4, mp.getSysFile());
					
					cnt = ps.executeUpdate();
					if(cnt < 1) {
						throw new Exception("첨부파일 추가시 오류가 발생했습니다.");
					}
				}else { //처음에 첨부한 이미지를 수정한 경우.
					//mId:이미지가  1:1인 경우에는 where절을 mId로 해도되지만, 1:n일 경우에는 반드시 serial로 줘야함.
					sql = "update member_photo set rDate=?, oriFile=?, sysFile=? where serial=?";
					ps = conn.prepareStatement(sql);
					ps.setString(1, sdf.format(vo.getrDate()));
					ps.setString(2, mp.getOriFile());
					ps.setString(3, mp.getSysFile());
					ps.setInt(4, serial);
					cnt = ps.executeUpdate();
					if(cnt < 1) {
						throw new Exception("첨부파일 수정시 오류가 발생했습니다.");
					}
				}
			}
			conn.commit();
		}catch(Exception e) {
			msg = e.getMessage();
			conn.rollback();
		}finally {
			if(deleteFile != null) {
				delFile(deleteFile);					
			}
			return msg;				
		}
	}
	
	public void delFile(String fileName) {
		File file = new File(upload + fileName);
		if(file.exists()) {
			file.delete();
		}
	}
	
	public String delete(String mId, String pwd, String flag) {
		String msg = "회원 정보가 정상적으로 삭제되었습니다.";
		String sql = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			sql = "select M.mId mId, P.serial serial, P.sysFile sysFile from member1 M left outer join member_photo P on M.mId=P.mId where M.mId=? and M.pwd=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mId);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			
			if(rs.next()){
				String dmId = rs.getString("mId");
				int dserial= rs.getInt("serial");
				String sysFile = rs.getString("sysFile");
				System.out.println("flag : " + flag);
				if(flag.equals("1")) { //회원 정보 삭제
					//기본정보 삭제
					sql = "delete from member1 where mId=?";
					ps = conn.prepareStatement(sql);
					ps.setString(1, dmId);
					cnt = ps.executeUpdate();
					if(cnt < 1) {
						throw new Exception("기본 회원 정보 삭제 중 오류가 발생했습니다.");
					}else{
						conn.commit();
					}
				}
				System.out.println("serial : " + dserial);
					//사진 파일 삭제
					sql = "delete from member_photo where serial=?";
					ps = conn.prepareStatement(sql);
					ps.setInt(1, dserial);
					cnt = ps.executeUpdate();
					if(cnt > 0) {
						conn.commit();
						delFile(sysFile);	
				}
			}
		}catch(Exception e) {
			msg = e.toString();
			conn.rollback();
		}finally {
			return msg;			
		}
	}
	
	public MemberVo view(String mId) {
		MemberVo vo = new MemberVo();
		List<MemberPhoto> list = new ArrayList<MemberPhoto>();
		try {
			String sql = "select M.mId mId, M.pwd pwd, M.mName mName, to_char(M.rDate, 'rrrr-MM-dd') rDate, M.grade grade," 
					   + " P.serial serial, P.sysFile sysFile, P.oriFile oriFile"
					   + " from member1 M left outer join member_photo P on M.mId=P.mId where M.mId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, mId);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				vo.setmId(rs.getString("mId"));
				vo.setPwd(rs.getString("pwd"));
				vo.setmName(rs.getString("mName"));
				vo.setrDate(rs.getDate("rDate"));
				vo.setGrade(rs.getInt("grade"));
				list.add(new MemberPhoto(rs.getInt("serial"), rs.getString("oriFile"), rs.getString("sysFile")));
				vo.setPhotos(list);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			return vo;			
		}
	}
	
	public List<MemberVo> select(Page p){
		List<MemberVo> list = new ArrayList<MemberVo>();
		String sql = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int totList = 0;
		
		try {
			//전체 건수
			sql = "select count(mId) cnt from member1 where mId like ? or mName like ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + p.getFindStr() + "%");
			ps.setString(2, "%" + p.getFindStr() + "%");
			
			rs = ps.executeQuery();
			if(rs.next()) {
				totList = rs.getInt("cnt");
				
				p.setTotListSize(totList);
				p.pageCompute();
				
				sql = "select * from("
					+ "	 select rownum rn, A.* from("
					+ "   select mId, pwd, mName, to_char(rDate, 'rrrr-MM-dd') rDate, grade"
					+ "   from member1 where mId like ? or mName like ? order by mName)A"
					+ " ) where rn between ? and ?";
				
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%" + p.getFindStr() + "%");
				ps.setString(2, "%" + p.getFindStr() + "%");
				ps.setInt(3, p.getStartNo());
				ps.setInt(4, p.getEndNo());
				
				rs = ps.executeQuery();
				while(rs.next()) {
					MemberVo vo = new MemberVo();
					vo.setmId(rs.getString("mId"));
					vo.setPwd(rs.getString("pwd"));
					vo.setmName(rs.getString("mName"));
					vo.setrDate(rs.getDate("rDate"));
					vo.setGrade(rs.getInt("grade"));
					list.add(vo);
				}
				/*확인
				System.out.println("totListSize : " + p.getTotListSize());
				System.out.println("startPage : " + p.getStartPage());
				System.out.println("endPage : " + p.getEndPage());
				System.out.println("startNo : " + p.getStartNo());
				System.out.println("endNo : " + p.getEndNo());
				*/
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			return list;			
		}
	}
}
