package ezen.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ezen.action.CommandAction;

public class LoginFormAction implements CommandAction {//ȸ������ �� ó��

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response)throws Throwable {
     
        return "/logon2/loginForm.jsp";//�ش� ��
    }
}