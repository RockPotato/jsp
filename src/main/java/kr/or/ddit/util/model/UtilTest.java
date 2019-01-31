package kr.or.ddit.util.model;

import static org.junit.Assert.*;

import org.junit.Test;

public class UtilTest {

	@Test
	public void testCookieStringParsing() {
		/***Given***/
		String cookieString = "rememberne=w; w=w; test=value";
		
		CookieUtil cookieUtil = new CookieUtil(cookieString);
		
		
		
		/***When***/
		String cookieValue = cookieUtil.getCookieValue("rememberne");
		String cookieValue2 = cookieUtil.getCookieValue("w");
		String cookieValue3 = cookieUtil.getCookieValue("test");
		/***Then***/
		
		assertEquals("w",cookieValue );
		assertEquals("w", cookieValue2);
		assertEquals("value",cookieValue3);
		

	}

}
