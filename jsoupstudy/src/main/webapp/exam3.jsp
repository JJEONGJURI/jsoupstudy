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
		String url = "https://doosanbears.com/players/pitchers";
		Elements div = null;
		try{
			Document doc = Jsoup.connect(url).get();
			div = doc.select(".playerlist a");
			out.println("<table>");
			for(int i=0;i<div.size();i++) {
				if(i%4==0)out.println("<tr>");
				out.println("<td>"+div.get(i).html()+"</td>");
				if(i%4==3)out.println("</tr>");
			}
			out.println("</table>");
		} catch (IOException e) {
			e.printStackTrace();
		}
	%>
	<hr><%=div.get(0).html() %>


</body>
</html>