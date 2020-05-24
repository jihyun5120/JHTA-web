package mongo;

import java.util.List;
import java.util.regex.Pattern;

import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;


public class MongoMember {
	DB db;
	DBCollection dbc;
	
	public MongoMember() {
		MongoClient client = new MongoDBConn().getClient();
		db = client.getDB("m1907");
		dbc = db.getCollection("member");
	}
	
	public String insert(DBObject obj) {
		String msg = "";
		try {
			dbc.insert(obj);
			msg = "회원정보가 정상적으로 등록되었습니다.";
		}catch(Exception ex) {
			msg = "회원정보 저장 중 오류가 발생했습니다.";
		}finally {
			return msg;
		}
	}
	
	public String modify(BasicDBObject obj) {
		String msg = "";
		String mId = obj.getString("mId");
		BasicDBObject filter = new BasicDBObject();
		filter.put("mId", mId);
		try {
			dbc.update(filter, obj);
			msg = "회원정보가 정상적으로 수정되었습니다.";
		}catch(Exception ex) {
			msg = "회원정보 저장 중 오류가 발생했습니다.";
		}finally {
			return msg;
		}
	}
	
	public String delete(String mId) {
		String msg = "";
		BasicDBObject filter = new BasicDBObject();
		filter.put("mId", mId);
		try {
			dbc.remove(filter);
			msg = "회원정보가 정상적으로 삭제되었습니다.";
		}catch(Exception ex) {
			msg = "회원정보가 삭제 중 오류가 발생했습니다." + ex.toString();
		}finally {
			return msg;
		}
	}
	
	public DBObject view(String mId) {
		DBObject o = null;
		BasicDBObject filter = new BasicDBObject();
		filter.put("mId", mId);
		DBCursor cursor = dbc.find(filter);
		if(cursor.hasNext()) {
			o = cursor.next();
		}
		return o;
	}
	
	public List<DBObject> select(String findStr) {
		DBCursor cursor = null;
		
		if(findStr != null) {
			BasicDBObject filter1 = new BasicDBObject();
			BasicDBObject filter2 = new BasicDBObject();
			BasicDBList or = new BasicDBList();
			filter1.put("mName", Pattern.compile(findStr));
			filter2.put("mId", Pattern.compile(findStr));
			
			or.add(filter1);
			or.add(filter2);
			
			BasicDBObject query = new BasicDBObject();
			query.put("$or", or); //{$or : [{filter},{filter}]}
			cursor = dbc.find(query);
		}else {
			cursor = dbc.find();
		}
		return cursor.toArray();
	}
	
	public static void main(String[] args) {
		MongoMember mm = new MongoMember();
		String json = null;
		//member collection의 모든 데이터를 조회
		//String json = mm.select(null);
		
		//mId = 'a001'인 데이터를 조회
		//json = mm.select("a001");
	}
}

