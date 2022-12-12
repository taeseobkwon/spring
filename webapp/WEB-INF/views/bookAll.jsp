<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h3>전체 게시물 수: ${count}</h3>
<%
	//model의 속성값을 꺼낼 때는 request.getAttribut("모델명");
	int pages = (int)request.getAttribute("pages");
	//Object으로 자동형변환되어 들어가 있던 것을 int의 모든 기능을 사용하고자하는 경우에는
	//다시 int로 변경해주어야 함
	//Object <-- Integer <--오토박싱--> int 
	//Integer(포장클래스(wrapper class), 기본형을 가지고 포장해서 만든 클래스) <-----> int(기본형)
	for(int p = 1; p <= 10; p++){
		
%>
	<a href=bookAll?page=<%= p %>>
		<button><%= p %></button>
	</a>
<%
	}
%>	<br>
<!--  -->
<%
	for(int p = 11; p <= pages; p++){
		
%>
	<a href=bookAll?page=<%= p %>>
		<button><%= p %></button>
	</a>
<%
	}
%>	<br>
<!--  -->



<table class="table">
	<tr>
		<td>book_no</td>
		<td>번호</td>
		<td>이름</td>
		<td>url</td>
		<td>img</td>
	</tr>
	<c:forEach items="${list}" var="one">
	<tr>
		<td>${one.book_no}</td>
		<td>${one.id}</td>
		<td>${one.name}</td>
		<td><a href="${one.url}">${one.url}</a>
		</td>
		<td><img alt="이미지오류" src="resources/img/${one.img}" width="50" height="50"></td>
	</tr>
	</c:forEach>
</table>
