<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    Map<String,Object> map = new HashMap<String,Object>();
    
    map.put("name","홍길동");
    map.put("age", 30);
    map.put("addr","서울시 강남구 강남대로");
    
    //                        key  value
    pageContext.setAttribute("map", map);

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
  Map's Data
<hr>
<!-- dot방식 -->
이름 : ${ pageScope.map.name }  <br>
<!-- square bracket방식 -->
나이 : ${ map['age'] } <br>
주소 : ${ map["addr"] } <br>

</body>
</html>