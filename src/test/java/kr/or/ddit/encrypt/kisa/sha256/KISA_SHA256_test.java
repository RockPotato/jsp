package kr.or.ddit.encrypt.kisa.sha256;

import static org.junit.Assert.*;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
* KISA_SHA256_test.java
*
* @author PC04
* @version 1.0
* @see
*
* <pre>
* << 개정이력(Modification Information) >>
*
* 수정자 수정내용
* ------ ------------------------
* PC04 최초 생성
* KISA_SHA256 hash 알고리즘 테스트
*
* </pre>
*/
public class KISA_SHA256_test {

	private Logger logger = LoggerFactory
			.getLogger(KISA_SHA256_test.class);
	
	/**
	* Method : testEncrypt
	* 작성자 : PC04
	* 변경이력 :
	* Method 설명 : 암호화 테스트
	*/
	@Test
	public void testEncrypt() {
		/***Given***/
		String plainText = "brown";
		/***When***/
		String encryptText = KISA_SHA256.encrypt(plainText);
		logger.info("encryptText : {}",encryptText);

		/***Then***/
		assertEquals("5eb67f9f849b9c3f739735633cbdf92121393d0e13bd0f464b1b2a6a15ad2dc", encryptText);
		
		
	}

}
