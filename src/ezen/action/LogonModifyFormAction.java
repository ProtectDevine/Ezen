package ezen.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.logon.LogonDataBean;
import ezen.logon.LogonDBBean;
import ezen.action.CommandAction;

public class LogonModifyFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String id = request.getParameter("id");
		
        LogonDBBean dbPro = LogonDBBean.getInstance();
        LogonDataBean member =  dbPro.getMember(id);

		//�ش� �信�� ����� �Ӽ�
        request.setAttribute("member", member);

        return "/logon2/modifyForm.jsp";//�ش��
	} // ȸ������ ���� �� ó��
	

}
