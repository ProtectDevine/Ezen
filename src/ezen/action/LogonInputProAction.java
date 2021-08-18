package ezen.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Timestamp;

import ezen.logon.LogonDataBean;
import ezen.logon.LogonDBBean;
import ezen.action.CommandAction;

public class LogonInputProAction implements CommandAction {//ȸ������ ó��

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response)  throws Throwable {

        request.setCharacterEncoding("euc-kr");//�ѱ� ���ڵ�
        
        LogonDataBean member = new LogonDataBean();//������ó�� ��
        	member.setId(request.getParameter("id"));
        	member.setPasswd(request.getParameter("passwd"));
        	member.setName(request.getParameter("name"));
        	member.setJumin1(request.getParameter("jumin1"));
        	member.setJumin2(request.getParameter("jumin2"));
        	member.setEmail(request.getParameter("email"));
        	member.setBlog(request.getParameter("blog"));
        	member.setReg_date(new Timestamp(System.currentTimeMillis()));

        LogonDBBean dbPro = LogonDBBean.getInstance();//DBó��
        	dbPro.insertMember(member);

        return "/logon2/inputPro.jsp";//�ش� ��
    }
}