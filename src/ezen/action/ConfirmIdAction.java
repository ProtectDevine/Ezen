package ezen.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.logon.LogonDBBean;
import ezen.action.CommandAction;

public class ConfirmIdAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("euc-kr"); //�ѱ� ���ڵ�
		
		String id = request.getParameter("id"); //������Է� ���̵�
		
		LogonDBBean dbPro = LogonDBBean.getInstance();//DBó��
		int check = dbPro.confirmId(id);
		
		//�ش� �信�� ����� �Ӽ�
		request.setAttribute("id", id);
		request.setAttribute("check", new Integer(check));
		
		return "/logon2/confirmId.jsp";
	} //�Էµ� �� ó��
	
	

}
