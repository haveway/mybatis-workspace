<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	안녕? 나는 index야 ~ 

	<!-- 
		* 프레임 워크
		- 개발자가 보다 편리한 환경에서 개발할 수 있도록 제공하는 뼈대, 틀이라고 생각 ~~
		- 소프트웨어 개발의 입장에서는 공통으로 사용하는 라이브러리/개발도구/인터페이스 등등등 을 의미
	
		* 프레임워크를 왜 사용해야하는가??
		- 웹프로젝트의 규모가 커지고있음
		=> 거대하고 복잡도가 높은 프로젝트를 완성시키기 위해서는 많은 사람들이 필요함
		=> 그 개발자들이 "통일성"있게 "빠르고" "안정적"으로 개발을 하기위한 도구로 프레임워크가 좋은 성과를 내고있다.
		=> 생산성 향상에 도움이 된다.
		
		* 프레임워크의 특징
		- 자유롭게 설계하고 코딩하는것이 아니라 프레임워크가 제공하는 가이드대로 설계하고 코드를 작성해야함(세팅도)
		- 개발할 수 있는 범위가 정해져있음
		- 개발자를 위한 다양한 도구 / 플러그인들이 지원됨
	
		* 프레임워크의 장단점
		> 장점 : 개발시간을 줄일 수 있음
				오류로부터 자유로워질 수 있음
		> 단점 : 너무 프레임워크에 의존하다보면 개발능력이 떨어져서 프레임워크 없이 개발하는것이 어려워짐
			   습득하는데 시간이 오래 걸릴 수 있음
	
	
		* 프레임워크의 조류
		- 영속성 : 데이터 관련(CRUD) 기능들을 편하게 작업할 수 있게 하는 프레임워크
		- 자바 : 웹 어플리케이션에 초점을 맞춰 필요한 요소들을 모듈화해서 제공해주는 프레임워크
		- 화면구현 : Front-end를 보다 쉽게 구현할 수 있게 해주는 틀을 제공하는 프레임워크
		- 기능 및 지원 : 특정 기능이나 업무수행에 도움을 주는 기능을 제공해주는 프레임워크
	 -->
	 <!-- index페이지가 로딩되자마자 WEB-INF/views/main.jsp로 곧바로 포워딩 -->
	 <jsp:forward page="WEB-INF/views/main.jsp"></jsp:forward>

</body>
</html>