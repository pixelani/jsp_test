<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    //JSP 내장객체 :                          EL내장객체
    //	PageContext 		pageContext       pageScope
    //  HttpServletRequest 	request           requestScope
    //  HttpSession 		session           sessionScope 
    //  ServletContext  	application       applicationScope
    
    //  ${ 영역명.변수명 }
    pageContext.setAttribute("msg", "pageContext's data");
    request.setAttribute("msg", "request's data");
    request.setAttribute("msg1", "request's data1");
    session.setAttribute("msg", "session's data");
    application.setAttribute("msg", "application's data");
    
    String name = "홍길동";
    pageContext.setAttribute("name", name);
    
%>    

<!-- EL영역참조순서
     pageScope -> requestScope -> sessionScope -> applicationScope
 -->
이름 : ${ pageScope.name }  <br>
pageContext  : ${ msg }    <br>
request      : ${ requestScope.msg } <br>
request1     : ${ msg1 } <br>
session      : ${ sessionScope.msg } <br>
application  : ${ applicationScope.msg } <br>


