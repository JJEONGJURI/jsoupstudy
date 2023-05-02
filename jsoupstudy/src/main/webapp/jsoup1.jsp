<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--/jsoupstudy/src/main/webapp/jsoup1.jsp --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수출입은행 환율 정보 조회하기</title>
<style type="text/css">
	table {border-collapse: collapse;} /*붙여서 나오게*/
	table,td,th {border:2px solid grey;}
</style>
</head>
<body>
<%
	String url = "https://www.koreaexim.go.kr/wg/HPHKWG057M01";
	//내가 가져오려는 페이지 url
	String line = "";
	Document doc = null;
	try {
		//url연결해서 doc로 가져온다
		doc = Jsoup.connect(url).get(); //url을 접속하여 문서를 지정
		//doc = url이 가져오는 전체 문서
		Elements e1 = doc.select("table"); //doc에서 table태그들 선택
		//이름이 table인 것들을 다 가져오기
		for(Element ele : e1) { //table 태그를 한개씩 조회
			String temp = ele.html(); //table 태그의 하위에 있는 태그들을 문자열로 리턴
			System.out.println("==========");
			System.out.println(temp);
			line += temp;
		}
	} catch(IOException e) {
		e.printStackTrace();
	}
%>
<table>
	<%=line %>
</table>
</body>
</html>