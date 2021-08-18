package ezen.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.logon.LogonDBBean;
import ezen.action.CommandAction;


public class LoginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("euc-kr");//한글 인코딩
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		LogonDBBean dbPro = LogonDBBean.getInstance(); //DB처리
		int check = dbPro.userCheck(id, passwd);
		
		//해당 뷰에서 사용할 속성
		
		request.setAttribute("check", new Integer(check));
		request.setAttribute("id", id);
		
		
		return "/logon2/loginPro.jsp"; // 해당 뷰
	} //회원 인증 처리
	
	

}
