package ez.board.service;

import java.sql.Connection;
import java.sql.SQLException;

import ez.board.dao.ArticleDao;
import ez.board.model.Article;


public class ArticleCheckHelper {

	public Article checkExistsAndPassword(Connection conn, int articleId, String password) 
			throws SQLException, ArticleNotFoundException, InvalidPasswordException{
		
		ArticleDao articleDao = ArticleDao.getInstance();
		Article article = articleDao.SelectById(conn, articleId);
		
		if(article == null) {
			throw new ArticleNotFoundException("�Խñ��� �������� �ʽ��ϴ� : " + articleId);
		}
		if(!checkPassword(article.getPassword(), password)) {
			throw new InvalidPasswordException("�߸��� ��ȣ");
		}
		return article;
	}

	
	private boolean checkPassword(String realPassword, String userInputPassword) {
		if(realPassword == null) {
			return false;
		}
		if(realPassword.length() == 0) {
			return false;
		}
		return realPassword.equals(userInputPassword);
		
	}
	
	
	
}
