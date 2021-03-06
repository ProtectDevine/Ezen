package ezen.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import ezen.action.CommandAction;
import ezen.action.NullAction;

public class ControllerUsingURI2 extends HttpServlet {
	
	//서블릿의 life cycle : init() 초기화 ==> service() 비지니스로직처리 ==> destroy() 소멸
	// 무조건 한바퀴 도는 실행	doPost(), doGet()
	
	private Map commandMap = new HashMap(); //명령어와 명령어 처리 클래스를 쌍으로 저장하려고
	
	
	 //명령어와 처리클래스가 매핑되어 있는 properties 파일을 읽어서 Map객체인 commandMap에 저장
    //명령어와 처리클래스가 매핑되어 있는 properties 파일은 Command.properties파일
	public void init(ServletConfig config) throws ServletException{
		
		String props = config.getInitParameter("configFile2"); // wep-inf\commandhandeler.properties(상대경로)
		//pros = web.xml에서 propertyConfig에 해당하는 init-param 의 값을 읽어옴 
		Properties pr = new Properties();
		//명령어와 처리클래스의 매핑정보를 저장할 Properties 객체 생성 / 키와 값으로 저장
		FileInputStream f = null;
		try {
			String configFilePath = config.getServletContext().getRealPath(props);
			//상대경로를 절대경로로 만들어줌 c:\\java\\app\ezenWep\wepcontent\web-inf\commandhandler.properties
			f = new FileInputStream(configFilePath); 
			//Command.properties파일의 내용 읽어옴 
			pr.load(f); //Command.properties파일의 정보를 Properties 객체에 저장
						//키와 밸류로 저장
			
			
		}catch(IOException e) {
			throw new ServletException(e);
		}finally {
			if(f!=null) try {f.close();}catch(IOException ex) {}
		}
		Iterator keyIter = pr.keySet().iterator();
		//Iterator객체는 Enumeration객체를 확장시킨 개념의 객체
		while(keyIter.hasNext()) {
			//객체를 하나씩 꺼내서 그 객체명으로 properties에 저장된 객체에 접근
			String command = (String)keyIter.next(); // hello
			String className = pr.getProperty(command); // = ezen.command.hello
			
			try {
				Class commandClass = Class.forName(className); 
				//해당 문자열을 클래스로 만듦
				Object commandInstance = commandClass.newInstance();
				//해당 클래스의 객체를 생성
				commandMap.put(command, commandInstance);
				//Map객체인 commandMap에 객체 저장
				
			}catch(ClassNotFoundException e) {
				throw new ServletException(e);
			}catch (InstantiationException e) {
                throw new ServletException(e);
            } catch (IllegalAccessException e) {
                throw new ServletException(e);
            } 
			
		}
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		requestPro(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		requestPro(request, response);
	}

	//사용자의 요청을 분석해서 해당 작업을 처리
	private void requestPro(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
			
		String view = null;
		CommandAction com = null;
		
		try {
			String command = request.getRequestURI();
			if(command.indexOf(request.getContextPath()) == 0) {
				command = command.substring(request.getContextPath().length());
			}
			com = (CommandAction)commandMap.get(command);
			if(com == null) {
				com = new NullAction();
			}
				view = com.requestPro(request, response);
			
			
			
		}catch(Throwable e) {
			throw new ServletException(e);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
			
			
			
		}
		
		

	
	
	
	
	
	
	
}
