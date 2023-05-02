<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- /jsoupstudy/src/main/webapp/exam2.jsp
	url : https://www.kgcsports.com/volleyball/player/player_list.php
	가져오기
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String url = "https://www.kgcsports.com/volleyball/player/player_profile.php?no=aq1";
		Elements div = null;
		try{
			Document doc = Jsoup.connect(url).get();
			div = doc.select("div.player_profile");
		
		} catch (IOException e) {
			e.printStackTrace();
		}
	%>
	<%=div.get(0).html() %>


</body>
</html>