package ezen.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.logon.LogonDBBean;
import ezen.action.CommandAction;


public class LoginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("euc-kr");//�ѱ� ���ڵ�
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		LogonDBBean dbPro = LogonDBBean.getInstance(); //DBó��
		int check = dbPro.userCheck(id, passwd);
		
		//�ش� �信�� ����� �Ӽ�
		
		request.setAttribute("check", new Integer(check));
		request.setAttribute("id", id);
		
		
		return "/logon2/loginPro.jsp"; // �ش� ��
	} //ȸ�� ���� ó��
	
	

}
