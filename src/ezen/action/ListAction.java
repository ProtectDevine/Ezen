package ezen.action;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.*;

import ezen.board.BoardDBBean;

public class ListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String pageNum = request.getParameter("pageNum"); //������ ��ȣ
		
		if(pageNum == null) {
			pageNum = "1";
		}
		int pageSize = 10;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1; // �� �������� ���۱� ��ȣ
		int endRow = currentPage * pageSize; // �� �������� ������ �۹�ȣ
		int count = 0;
		int number = 0;
		
		List articleList = null;
		BoardDBBean dbPro = BoardDBBean.getInstance(); //DB����
		count = dbPro.getArticleCount(); // ��ü ���� ��
		

		if(count > 0) {
			articleList = dbPro.getArticles(startRow, endRow); //���� �������� �ش��ϴ� �۸��
			
		}else {
			articleList = Collections.EMPTY_LIST;
		}
		
		number = count-(currentPage-1)*pageSize; //�۸�Ͽ� ǥ���� �۹�ȣ
		//�ش� �信�� ����� �Ӽ�
		request.setAttribute("currentPage", new Integer(currentPage)); //��û�ϴ� ���� ������
		request.setAttribute("startRow", new Integer(startRow)); //�������� ������
		request.setAttribute("endRow", new Integer(endRow)); // �������� ����
		request.setAttribute("count", new Integer(count)); // �Էµ� ���� ��
		request.setAttribute("pageSize", new Integer(pageSize)); //�� �������� �����ִ� ���� ��
		request.setAttribute("number", new Integer(number)); // �۹�ȣ
		request.setAttribute("articleList", articleList); //DB���� ������ ���� ����
		
		
		
		return "/MVC/list.jsp"; // �ش� �� EL����
	} //�۸�� ó��
	
	

	
}
