package ezen.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.logon.LogonDBBean;
import ezen.action.CommandAction;

public class LogonDeleteProAction implements CommandAction {//È¸¿øÅ»Åð Ã³¸®

    public String requestPro( HttpServletRequest request,
        HttpServletResponse response) throws Throwable {

        request.setCharacterEncoding("euc-kr");

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
	    
        LogonDBBean dbPro = LogonDBBean.getInstance();
        int check = dbPro.deleteMember(id, passwd);

        //ÇØ´ç ºä¿¡¼­ »ç¿ëÇÒ ¼Ó¼º
        request.setAttribute("check", new Integer(check));

        return "/logon2/deletePro.jsp";//ÇØ´çºä
    }
}