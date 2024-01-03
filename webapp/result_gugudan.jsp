<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL 설정 -->
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %> 
    
<%
   //어느영역의 코드 : _jspService(request,response)내의 코드
   // JSP내장객체    : request/response/session/application/out ...
   // /result_gugudan.jsp?dan=3
   
   //파라메터 받기
   String str_dan = request.getParameter("dan");//"3"
   int    dan     = Integer.parseInt(str_dan);
   
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%= dan %>단 보기</h3>

<ul style="list-style: none;">
   <%
       for(int i=1;i<=9;i++){
   %>
   
     <li><%= dan %> x <%= i %> = <%= dan*i %></li>
   
   <%
       }//end-for
   %>
</ul>

<hr>
   JSTL로 출력해보기
<hr>

<%-- 
  result_gugudan.jsp?dan=3
  ${ param.dan } 
 --%>

<c:forEach var="i" begin="1"  end="9">
   ${ param.dan } x ${ pageScope.i }  = ${ param.dan*i } <br>
</c:forEach>



<a href="input_gugudan.jsp">다시하기</a>
</body>
</html>