package kr.or.ddit.util.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogBackTest {
	
	private Logger logger = LoggerFactory.getLogger(LogBackTest.class);
	// 1. logger 선언
//	private Logger logger = LoggerFactory.getLogger(Class);
//	private Logger logger = LoggerFactory.getLogger(LogBackTest.class);
	
//	private Logger logger = LoggerFactory.getLogger("kr.or.ddit.util.log.LogBackTest");
//	private Logger logger = LoggerFactory.getLogger("consoleLog");
	//<logger name="kr.or.ddit" level="DEBUG"/>
	
	public LogBackTest(){
		System.out.println("test");
		logger.trace("trace" +"test");
		logger.debug("debug" +"test");
		logger.info("info" +"test");
		logger.warn("warn" +"test");
		
		//===================================
		
		logger.error("error " + "test");
		logger.error("error {}, {}, {}" ,"test" ,"test2" ,"test3");
	}
	
	public static void main(String[] arg){
		LogBackTest logBackTest = new LogBackTest();
	}
}
