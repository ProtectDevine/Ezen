package ez.board.service;

import java.sql.Connection;
import java.sql.SQLException;

import ez.board.dao.ArticleDao;
import ez.board.model.Article;
import ez.board.model.UpdateRequest;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class UpdateArticleService {
	
	private static UpdateArticleService instance = new UpdateArticleService();
	public static UpdateArticleService getInstance() {
		return instance;
	}
	
	private UpdateArticleService() {}
	
	
	public Article update(UpdateRequest updateRequest) throws ArticleNotFoundException, InvalidPasswordException {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			ArticleCheckHelper checkHelper = new ArticleCheckHelper();
			checkHelper.checkExistsAndPassword(conn, updateRequest.getArticleId(), updateRequest.getPassword());
			
			Article updatedArticle = new Article();
			updatedArticle.setId(updateRequest.getArticleId());
			updatedArticle.setTitle(updateRequest.getTitle());
			updatedArticle.setContent(updateRequest.getContent());

			ArticleDao articleDao = ArticleDao.getInstance();
			int updateCount = articleDao.update(conn, updatedArticle);
			if(updateCount == 0) {
				throw new ArticleNotFoundException(
						"게시글이 존재하지 않습니다 : "+updateRequest.getArticleId());
			}
			
			Article article = articleDao.SelectById(conn, updateRequest.getArticleId());
			
			conn.commit();
			
			return article;
			
			
			
			
			
		}catch(SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException("DB에러 발생 :" + e.getMessage(), e);
		}catch(ArticleNotFoundException e) {
			JdbcUtil.rollback(conn);
			throw e;
		}catch(InvalidPasswordException e) {
			JdbcUtil.close(conn);
			throw e;
		}finally {
			if(conn != null) {
				try{
					conn.setAutoCommit(true);
				}catch(SQLException e) {
				}
			JdbcUtil.close(conn);
			}
		}
	}
	
	
	
}


