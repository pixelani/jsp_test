<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>     

<%
     //배열
     String [] sido_array = {"서울","경기","인천","대전","대구","광주"};  

     //ArrayList
     List<String> fruit_list = new ArrayList<String>();
     fruit_list.add("사과"); //0
     fruit_list.add("참외"); //1
     fruit_list.add("수박"); //2
     fruit_list.add("포도"); //3
     fruit_list.add("딸기"); //4

     //Map
     Map<String,Object> map = new HashMap<String,Object>();
     
     map.put("name","홍길동");
     map.put("age", 30);
     map.put("addr","서울시 강남구 강남대로");
     

     // EL사용하려고....
     pageContext.setAttribute("sido_array", sido_array);
     pageContext.setAttribute("fruit_list", fruit_list);
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
  시도 목록(Array)
<hr>
<ul>
   <!--  for(String sido : sido_array) 동일함  -->
   <!-- items     : 배열 / ArrayList / Set / Map / Properties
        varStatus : index(0,1,2,...) 첨자관리
                    count(1,2,3,...) 순서관리
   -->
   <c:forEach var="sido"  items="${ sido_array }"  varStatus="i">
      <li>${ i.count } : ${ sido }(${ i.index })</li>
   </c:forEach>   
</ul>


<hr>
  과일 목록(ArrayList)
<hr>
	<ul>
	    <c:forEach var="fruit"  items="${ fruit_list }">
	        <li>${ fruit }</li>
	    </c:forEach>
	</ul>

<hr>
  Map 목록
<hr>
    <ul>
        <c:forEach var="entry"  items="${ map }">
           <li>${entry} / [${ entry.key }] 의 값은 [${ entry.value }]</li>
        </c:forEach>      
    </ul>

</body>
</html>