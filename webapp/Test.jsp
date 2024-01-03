<%@ page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8;"
    pageEncoding="UTF-8"%>

<%!
  //선언부(java code)
  
  //변수선언
  int a;

  Calendar c = Calendar.getInstance();

  //메소드선언
  int plus(int a,int b){
	  return a+b;
  }
%>

<%
   //Scriptlet-> _jspService()내에 작성
   a = 10;
   
   
%>

<!-- HTML주석입니다 :  Test_jsp.java로 넘어간다 
     id:hong  pwd=1234
 -->

<%-- JSP주석입니다 : Test_jsp.java로 안 넘어간다 
     id:kim  pwd=1234
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕!! JSP야!!<br>
반가워!!
<%
   //객체생성된 날짜
   int year = c.get(Calendar.YEAR);
   int month= c.get(Calendar.MONTH)+1;
   int date = c.get(Calendar.DATE);
   
   //JSP 내장객체:out/request/response/session/application
   out.println(year);
   out.println(month);
   out.println(date);
   
   out.println("<br>");
   out.println("IP : " + request.getRemoteAddr());
   
   out.println("<br>");
   out.println("a : " + a);
   
%>
<br>
a : <%= a %>
</body>
</html>