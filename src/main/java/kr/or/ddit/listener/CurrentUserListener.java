package kr.or.ddit.listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import kr.or.ddit.user.model.UserVO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CurrentUserListener implements HttpSessionAttributeListener{

	private Logger logger = LoggerFactory
			.getLogger(CurrentUserListener.class);
	
	private List<UserVO> currentLoginUserList; 
	
	public CurrentUserListener() {
		currentLoginUserList = new ArrayList<UserVO>();
	}

	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		logger.debug("CurrentUserListener added");
		// 신규 사용자 로그인 여부 체크
		if("userVo".equals(event.getName())){
			UserVO userVo = (UserVO)event.getValue();
			currentLoginUserList.add(userVo);
			ServletContext application = event.getSession().getServletContext();
			application.setAttribute("currentLoginUserList", currentLoginUserList);
		}
	}


	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		logger.debug("CurrentUserListener replaced");
		attributeAdded(event);
	}
	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		if("userVo".equals(event.getName())){
			UserVO userVo = (UserVO)event.getValue();
			currentLoginUserList.remove(userVo);
			ServletContext application = event.getSession().getServletContext();
			application.setAttribute("currentLoginUserList", currentLoginUserList);
		}
	}

}
