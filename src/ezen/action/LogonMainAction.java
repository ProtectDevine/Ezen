package ezen.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ezen.action.CommandAction;

public class LogonMainAction implements CommandAction {//회원관리메인 페이지

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response)throws Throwable {

        return "/logon2/main.jsp";//해당 뷰
    }
}