package ezen.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ezen.action.CommandAction;

public class LoginFormAction implements CommandAction {//회원인증 폼 처리

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response)throws Throwable {
     
        return "/logon2/loginForm.jsp";//해당 뷰
    }
}