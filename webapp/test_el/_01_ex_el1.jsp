<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!-- HTML주석  -->

<%-- JSP주석 --%>    
    
   
<%--
    EL(Expression Language:표현언어)
    : JSP내에서만 사용된다
    형식) 
         ${  영역이름.변수(상수) 또는 수식  }
         
    ** EL내에서 사용되는 변수는 4개영역의 저장된 변수 또는 param값만 표현할 수 있다
         
--%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
  EL연산자
<hr>
<!-- 산술연산자 : + - *  /(div)  mod -->
\${ 3 + 1 }  : ${ 3 + 1 } <br>
\${ 3 - 1 }  : ${ 3 - 1 } <br>
\${ 3 * 1 }  : ${ 3 * 1 } <br>
\${ 10 / 3}  : ${ 10 / 3 }  <%-- or ${ 10 div 3 } --%><br>
\${ 10 % 3}  : ${ 10 % 3}  or ${ 10 mod 3 } <br>

<%--  관계연산자 : > >=  < <=  ==  !=  --%>
\${ 3>2  } : ${ 3>2  } or ${ 3 gt 2 } <br> <!-- gt : greater than   -->
\${ 3>=2 } : ${ 3>=2 } or ${ 3 ge 2 } <br> <!-- ge : greater equal  -->

\${ 3<2   } : ${ 3<2   } or ${ 3 lt 2 } <br> <!-- lt : less than      -->
\${ 3<=2  } : ${ 3<=2  } or ${ 3 le 2 } <br> <!-- le : less equal     -->

\${ 3==2 }  : ${ 3==2 } or ${ 3 eq 2 } <br><!-- eq : equal      -->
\${ 3!=2 }  : ${ 3!=2 } <%-- or ${ 3 ne 2 } --%> <br><!-- ne : not equal  -->

<!-- 기타 : 3항연산자 / empty / ! or not -->
메시지 : ${ (not empty param.msg) ? param.msg : '메시지가 비어있습니다'  } <br>


</body>
</html>