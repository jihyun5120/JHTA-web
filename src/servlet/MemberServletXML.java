package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.MemberDao;
import bean.MemberVo2;

public class MemberServletXML extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;Charset=utf-8"); //html사용하기 위해서.
		request.setCharacterEncoding("utf-8");
		
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		String rDate = request.getParameter("rDate");
		String grade = request.getParameter("grade");
		
		System.out.println("doPost");
		System.out.println(mId);
		System.out.println(mName);
		System.out.println(rDate);
		System.out.println(grade);
		
		PrintWriter out = response.getWriter();
		out.print("<ul>");
		out.print("<li>mId=" + mId + "</li>");
		out.print("<li>mName=" + mName + "</li>");
		out.print("<li>rDate=" + rDate + "</li>");
		out.print("<li>grade=" + grade + "</li>");
		out.print("</ul>");
		
		MemberVo2 vo = new MemberVo2();
		vo.setmId(mId);
		vo.setmName(mName);
		vo.setrDate(rDate);
		vo.setGrade(Integer.parseInt(grade));
		
		MemberDao dao = new MemberDao();
		String msg = dao.insert2(vo);
		out.print("<h4>" + msg + "</h4>");
		
		out.close();
	}
	
}
