<%@tag import="java.util.ArrayList"%>
<%@tag import="kr.or.ddit.prod.model.ProdVO"%>
<%@tag import="java.util.List"%>
<%@tag import="java.sql.SQLException"%>
<%@tag import="java.sql.DriverManager"%>
<%@tag import="java.sql.ResultSet"%>
<%@tag import="java.sql.Statement"%>
<%@tag import="java.sql.Connection"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="prod_lgu" type="java.lang.String"%>

<select>
<%
	//DB작업에 필요한 객체변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null; //쿼리문 Select일 경우 필요
	List<ProdVO> list = new ArrayList<>();
	List<String> strList = new ArrayList<>();
	
	try {
		//1.드라이버 로딩
		String driver = "oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);

		//2.DB접속(Connection 객체 생성)
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "PC04_PC";
		String password = "java";

		conn = DriverManager.getConnection(url, user, password);

		//3.Statement객체 생성 > Connection객체를 이용
		stmt = conn.createStatement();

		//4.SQL문을 Statement객체를 이용하여 실행하고 결과를 ResultSet객체에 저장한다
		String query = "select * from prod where prod_lgu = \'"+prod_lgu+"\'"; //실행할 SQL문
		rs = stmt.executeQuery(query);
		//SQL문이 select일 경우에는 executeQuery()메서드 사용
		// insert, update delect일경우 executeUpdate()매서드 사용

		//5.ResultSet 객체에 저장되어 있는 자료를 반복문고ㅓ next()메서드를 이용하여 차례대로 읽어와 처리
		System.out.println("실행 Query문 " + query);
		System.out.println("------- 실행 결과 -------");
		
		//rs.next()  >  ResultSet 객체의 데이터를 가리키는 포인터를 다음 레코드로 이동 시키고 그 곳에 자료가 있으면 true 없으면 false반환
		while (rs.next()) {
			out.write("<option value="+rs.getString("prod_id")+">"+rs.getString("prod_name")
					+"</option>"+"\n");
		}
		System.out.println("출력 끝");
	} catch (SQLException e) {
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} finally {
		//6.종료(사용했던 자원을 모두 반납)
		if (rs != null)
			try {
				rs.close();
			} catch (SQLException e2) {
			}
		if (stmt != null)
			try {
				stmt.close();
			} catch (SQLException e2) {
			}
		if (conn != null)
			try {
				conn.close();
			} catch (SQLException e2) {
			}
	}
%>
</select>
