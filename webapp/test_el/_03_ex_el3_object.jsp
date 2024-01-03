<%@page import="vo.PersonVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

    PersonVo p = new PersonVo("일길동", 20 , "010-111-1234");

    //왜? -> EL표현식 사용하기 위해서
    pageContext.setAttribute("p", p);

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
  Person's Data
<hr>
<%-- 이름: <%= p.getName() %> <br> --%>
이름 : ${ pageScope.p.name  } <br> <!-- p.name -> 내부적으로 p.getName() call -->
나이 : ${ p.age } <br>
<!--   square bracket방식   -->
전화 : ${ p['tel'] } <br>



</body>
</html>