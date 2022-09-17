<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.model.vo.Person" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕 나는 el이야</title>
</head>
<body>
	
	
	<h1>EL 기본구문</h1>
	<%--
	<h3>1. 기존 방식대로 스크립틀릿과 표현식을 이용해서 각 영역에 담겨있는 값 뽑아서 화면에 출력</h3>

	<%
		// requestScope에 담긴 값 뽑기 => classRoom, student
		String classRoom = (String)request.getAttribute("classRoom");
		Person student = (Person)request.getAttribute("student");
	
		// sessionScope에 담긴 값 뽑기 => academy, teacher
		String academy = (String)session.getAttribute("academy");
		Person teacher = (Person)session.getAttribute("teacher");
	%>

	<p>
		학원명 : <%= academy %> <br>
		강의장 : <%= classRoom %> <br>
		강사정보 : <%= teacher.getName() %>, <%= teacher.getAge() %>, <%= teacher.getGender() %> <br>
	
		수강생 정보 <br>
		<ul>
			<li>이름 : <%= student.getName() %></li>		
			<li>나이 : <%= student.getAge() %></li>		
			<li>성별 : <%= student.getGender() %></li>		
		</ul>
	</p>
 	--%>
	<hr>

	<h3>2. EL을 이용해서 보다 쉽게 해당 Scope에 저장된 값들을 출력하기</h3>
	
	<p>
		EL은 getXXX(getAttribute, getter메소드들)을 통해 값을 빼올 필요 없이 키값만 제시하면 바로 값에 접근 가능<br>
		내부적으로 해당 Scope영역에 해당 키값에 해당하는 밸류값을 가져올 수 있음<br>
		기본적으로 EL은 JSP내장객체 종류(4가지)를 구분하지않고 자동적으로 모든 내장객체에서 키값을 검색해서 존재하는 경우 값을 가져옴
	</p>
	
	<p>
		학원명 : ${ academy }<br>
		강의장 : ${ classRoom } <br>
		강사정보 : ${ teacher.name }, ${ teacher.age }, ${ teacher.gender }<br>
	
		수강생 정보 
		<ul>
			<li>이름 : ${ student.name }</li>		
			<li>나이 : ${ student.age }</li>		
			<li>성별 : ${ student.gender }</li>
		</ul>
		
		<!-- 
			필드값에 직접접근한걸까??
			teacher에 접근했을 때 밸류값을 Person타입 객체임
			해당 Person객체에 각 필드에 담긴 값을 출력하고자 한다면 키값.필드명으로 접근하면됨
			내부적으로 getter메소드를 찾아서 호출이 되서 값을 가져오는 구조
			=> 항상 명심해야할 사항 : getter메소드를 항상 만들어줘야함
		 -->
	</p>
	<hr>

	<h3>3. 단, EL사용 시 내장 객체들에 저장된 키값이 동일할 경우</h3>

	scope 키값에 담긴 밸류 값 : ${ scope }<br> <!-- request라고 찍힘 -->
	
	<!-- 
		EL은 공유범위가 가장 작은 Scope에서부터 해당 키값을 검색함
		page => request => session => application 순으로 키값을 찾음
	
		만약에 모든 영역에서 해당 키에 대한 값을 못찾았을 경우?>??
		=> 아무것도 출력 안됨( 오류가 안남 )
	 -->
	 EL로 없는 키값을 제시했을 경우 : ${ aaa }
	 표현식으로 없는 키값을 제시했을 경우 : &lt;= aaa &gt; <br> <!-- 500에러 발생 -->

	<hr>

	<h3>4. 직접 Scope영역을 지정해서 접근하기</h3>
	
	<%
		//pageScope에 담기
		pageContext.setAttribute("scope", "page");
	%>

	Quiz. ${ scope }를 작성하면 무슨 값이 나올까? => page <br><br>
	
	pageScope에 담긴 "scope" 키값에 해당하는 밸류도 뽑고싶고,
	requestScope, sessionScope, applicationScope에 있는 "scope" 키값에 해당하는 밸류도 뽑고싶다 <br>
	
	pageScope에 담긴 값 : ${ scope } 또는 ${ pageScope.scope } <br>
	requestScope에 담긴 값 : ${ requestScope.scope } <br>
	sessionScope에 담긴 값 : ${ sessionScope.scope } <br>
	applicationScope에 담긴 값 : ${ applicationScope.scope } <br><br>

	잘못된 접근 예시(session의 classRoom이라는 키값으로 접근할 경우) : ${ sessionScope.classRoom } <br>
	=> 아무것도 출력 X

</body>
</html>