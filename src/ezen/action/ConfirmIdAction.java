package ezen.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.logon.LogonDBBean;
import ezen.action.CommandAction;

public class ConfirmIdAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("euc-kr"); //한글 인코딩
		
		String id = request.getParameter("id"); //사용자입력 아이디
		
		LogonDBBean dbPro = LogonDBBean.getInstance();//DB처리
		int check = dbPro.confirmId(id);
		
		//해당 뷰에서 사용할 속성
		request.setAttribute("id", id);
		request.setAttribute("check", new Integer(check));
		
		return "/logon2/confirmId.jsp";
	} //입력된 글 처리
	
	

}
