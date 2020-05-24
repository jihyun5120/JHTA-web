package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.MemberDao;
import bean.MemberVo2;

@WebServlet("*.do")
public class MemberServletDo extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;Charset=utf-8"); //html사용하기 위해서.
		request.setCharacterEncoding("utf-8");
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		String rDate = request.getParameter("rDate");
		String grade = request.getParameter("grade");

		MemberVo2 vo = new MemberVo2();
		vo.setmId(mId);
		vo.setmName(mName);
		vo.setrDate(rDate);
		vo.setGrade(Integer.parseInt(grade));
		
		MemberDao dao = new MemberDao();
		String msg = dao.insert2(vo);
		
		//실행결과를 특정 페이지로 전달.
		String path = "/index.jsp?inc=/jsp/index_jsp.jsp&inc2=/jsp/insert_result_do.jsp";
		ServletContext cont = getServletContext(); //HttpServlet이 가지고있는 메소드.
		RequestDispatcher disp = cont.getRequestDispatcher(path);
		request.setAttribute("msg", msg);
		disp.forward(request, response);
		
	}
}
