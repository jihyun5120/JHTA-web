package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.FileUpload;
import bean.MemberDao2;
import bean.MemberPhoto;
import bean.MemberVo;
import bean.Page;

@WebServlet("*.mm")
public class MemberServlet extends HttpServlet{
	String url = "index.jsp?inc=./jsp/index_jsp.jsp&inc2=./jsp_member";
	RequestDispatcher rd;
	String path;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String temp = req.getRequestURI();
		int pos = temp.lastIndexOf("/");
		String tempUrl = temp.substring(pos);
		
		switch(tempUrl) {
		case  "/insert.mm":
			insert(req, resp);
			break;
		case  "/insertR.mm":
			insertR(req, resp);
			break;
		case  "/modify.mm":
			modify(req, resp);
			break;
		case  "/modifyR.mm":
			modifyR(req, resp);
			break;
		case  "/view.mm":
			view(req, resp);
			break;
		case  "/deleteR.mm":
			deleteR(req, resp);
			break;
		case  "/select.mm":
			select(req, resp);
			break;
		}
	}
	
	public void insert(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		String findStr = req.getParameter("findStr");		
		path = url + "/insert.jsp?findStr=" + findStr;
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
		
	}
	public void insertR(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		path = url + "/insert_result.jsp";
		FileUpload upload = new FileUpload(req, resp);
		if(upload.uploadFormCheck()) { //업로드 실행, enctype='multipart/form-data'가 참일 때.
			MemberVo vo = upload.uploading();
			List<MemberPhoto> list = vo.getPhotos();
			
			MemberDao2 dao = new MemberDao2();
			String msg = dao.insert(vo);
			req.setAttribute("msg", msg);
			
			for(MemberPhoto p : list) {
				System.out.println("ori = " + p.getOriFile());
				System.out.println("sys = " + p.getSysFile());
			}
		}else {
			System.out.println("error");
			resp.setStatus(HttpServletResponse.SC_BAD_REQUEST); //응답정보에 오류가 났다는 상수.
		}
		path += "?nowPage=" + req.getAttribute("nowPage");
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void modify(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		MemberDao2 dao = new MemberDao2();
		String mId = req.getParameter("mId");
		MemberVo vo = dao.view(mId);
		req.setAttribute("vo", vo);
		path = url + "/modify.jsp";
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void modifyR(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		path = url + "/modify_result.jsp";
		String msg = "회원정보가 정상적으로 수정되었습니다.";
		
		FileUpload upload = new FileUpload(req, resp);
		if(upload.uploadFormCheck()) { //FileIpload의 uploadFormCheck()가 true일 때.
			MemberVo vo = upload.uploading();
			MemberDao2 dao = new MemberDao2();
			msg = dao.modify(vo);
		}
		
		req.setAttribute("msg", msg);
		
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	
	public void view(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		MemberDao2 dao = new MemberDao2();
		String mId = req.getParameter("mId");
		MemberVo vo = dao.view(mId);
		req.setAttribute("vo", vo);
		
		String photo = vo.getPhotos().get(0).getSysFile();
		req.setAttribute("sysFile", photo);
		
		path = url + "/view.jsp";
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	
	public void deleteR(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		String msg ="";
		
		MemberDao2 dao = new MemberDao2();
		String mId = req.getParameter("mId");
		String pwd = req.getParameter("pwd");
		String flag = req.getParameter("flag");
		msg = dao.delete(mId, pwd, flag);
		
		req.setAttribute("msg", msg);
		if(flag.equals("1")) {
			path = url + "/delete_result.jsp";
		}else {
			modify(req, resp);
		}
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	
	public void select(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		MemberDao2 dao = new MemberDao2();
		int nowPage = 1;
		String findStr = "";
		if(req.getParameter("nowPage") != "") {
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		}
		if(req.getParameter("findStr") != "") {
			findStr = req.getParameter("findStr");
		}
		
		Page p = new Page();
		p.setNowPage(nowPage);
		p.setFindStr(findStr);
		
		List<MemberVo> list = dao.select(p);
		
		req.setAttribute("list", list); //dao.select에서 처리한 결과를 보냄.
		req.setAttribute("p", p);
		
		path = url + "/select.jsp";
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}	
}
