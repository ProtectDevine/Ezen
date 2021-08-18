package ezen.action;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.*;

import ezen.board.BoardDBBean;

public class ListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String pageNum = request.getParameter("pageNum"); //페이지 번호
		
		if(pageNum == null) {
			pageNum = "1";
		}
		int pageSize = 10;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1; // 한 페이지의 시작글 번호
		int endRow = currentPage * pageSize; // 한 페이지의 마지막 글번호
		int count = 0;
		int number = 0;
		
		List articleList = null;
		BoardDBBean dbPro = BoardDBBean.getInstance(); //DB연동
		count = dbPro.getArticleCount(); // 전체 글의 수
		

		if(count > 0) {
			articleList = dbPro.getArticles(startRow, endRow); //현재 페이지에 해당하는 글목록
			
		}else {
			articleList = Collections.EMPTY_LIST;
		}
		
		number = count-(currentPage-1)*pageSize; //글목록에 표시할 글번호
		//해당 뷰에서 사용할 속성
		request.setAttribute("currentPage", new Integer(currentPage)); //요청하는 현재 페이지
		request.setAttribute("startRow", new Integer(startRow)); //가져오는 시작행
		request.setAttribute("endRow", new Integer(endRow)); // 가져오는 끝행
		request.setAttribute("count", new Integer(count)); // 입력된 글의 수
		request.setAttribute("pageSize", new Integer(pageSize)); //한 페이지에 보여주는 글의 수
		request.setAttribute("number", new Integer(number)); // 글번호
		request.setAttribute("articleList", articleList); //DB에서 꺼내온 행의 집합
		
		
		
		return "/MVC/list.jsp"; // 해당 뷰 EL셋팅
	} //글목록 처리
	
	

	
}
