package mongo;

import java.util.List;
import java.util.Set;

import com.mongodb.DB;
import com.mongodb.MongoClient;

public class MongoDBConn {
	//DataBase 연결
	MongoClient client;
	String ip = "localhost";
	int port = 27017;
	String dbName = "m1907";
	
	public MongoDBConn() {
		client = new MongoClient(ip, port);
	}
	
	//DataBase 목록 확인
	public String dbList() {
		StringBuilder sb = new StringBuilder();
		List<String> list = client.getDatabaseNames();
		for(String s : list) {
			sb.append(s + " ");
		}
		return sb.toString();
	}
	
	//Collection 목록 확인
	public String collectList() {
		StringBuilder sb = new StringBuilder();
		DB db = client.getDB("m1907");
		Set<String> set = db.getCollectionNames();
		for(String s : set) {
			sb.append(s + " ");
		}
		return sb.toString();
	}
	
	public MongoClient getClient() {
		return client;
	}

	public static void main(String[] args) {
		MongoDBConn m = new MongoDBConn();
		
		System.out.println("Database list");
		System.out.println(m.dbList());
		
		System.out.println("Collection list");
		System.out.println(m.collectList());
	}

}
