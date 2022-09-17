<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펑션~</title>
</head>
<body>
	
	<h1>JSTL Functions Library</h1>
	
	<p>
		functions라이브러리는 따로 태그를 제공하는 형태는 아님<br>
		EL구문안에서 메소드를 호출하는 형태로 사용<br>
		주로 문자열 관련된 메소드들을 제공한다<br>
	</p>
	
	<c:set var="str" value="How are you?" />
	
	str : ${ str }<br>
	
	문자열의 길이 : ${ str.length() } 글자<br> <!--  자바방식  -->
	문자열의 길이 : ${ fn:length(str) } 글자<br> <!-- functions 라이브러리 방식 -->
	
	문자 대문자로 출력 : ${ fn:toUpperCase(str) }<br>
	문자 소문자로 출력 : ${ fn:toLowerCase(str) }<br>
	
	are의 시작 인덱스 : ${ fn:indexOf(str,'are') }번째 <br>
	
	are을 were로 변환 : ${ fn:replace(str, "are", "were") } <br>
	
	str : ${ str }
	
	<c:if test="${ fn:contains(str, 'are') }">
		응 있어 ~ 
	</c:if>





</body>
</html>