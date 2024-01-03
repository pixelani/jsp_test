<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!-- JSTL 설정 -->
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn"   uri="http://java.sun.com/jsp/jstl/functions" %>
    
<%
   //JSTL(JSP Standard Tag Library)
   // : JSTL내에서 사용되는 변수는 EL표현식만 사용한다(임시변수:pageScope를 이용)
   //1.core      : if,forEach,Choose,set,....
   //2.fmt       : 날짜/숫자형식 
   //3.functions : substring, length , ....
    
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- for(int i=1;i<=5;i++) 동일 -->
<c:forEach var="i" begin="1"  end="5"  step="1">
	
	<c:if test="${ i%2==1 }">
		<font color=red >${ i } : 안녕</font><br>
	</c:if>
	
	<c:if test="${ i%2==0 }">
		<font color=blue >${ i } : 안녕</font><br>
	</c:if>
	
</c:forEach>



</body>
</html>