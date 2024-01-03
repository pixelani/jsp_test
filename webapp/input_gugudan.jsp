<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
  
  const regular_gugudan = /^[2-9]{1}$/;
  
  function send(f){
	  
	  let dan = f.dan.value;
	  if(regular_gugudan.test(dan)==false){
		  alert('2~9사이의 숫자만 입력하세요');
		  f.dan.value='';
		  f.dan.focus();
		  return;
	  }
	  
	  f.action="result_gugudan.jsp";
	  f.submit();
	  
  }

</script>

</head>
<body>

<form>
  단:<input name="dan">
     <input type="button"  value="결과보기" onclick="send(this.form);">
</form>

</body>
</html>