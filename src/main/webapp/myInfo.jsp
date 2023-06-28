<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물몽몽</title>
</head>
<body>
<!-- html은 여러칸 띄우거나 줄바꿈이 한번만 인식된다. 띄울거면 &nbsp; 사용

	줄바꾸려면 <br>  -->
myInfo             입니다
<%
out.println("출력이출력출력<br>");
out.println(application.getRealPath("/"));
%>
<!-- 데이터 전송 <form> </form>
	action: -->

<form action="myInfoOK.jsp" method="post">
	<label>
		이름: <input type="text" name="name">
	</label><br>
	<label>
		ID: <input type="text" name="id">
	</label><br>
	<label>
		비밀번호: <input type="password" name="password">
	</label><br>
	<label>
		나이: <input type="text" name="age">
	</label><br>
	<input type="submit" value="로그인"><br>
	
	<!-- name으로 그룹화
		checked로 디폴트 -->
		
	<fieldset style="width: 100px;">
		<legend>성별</legend>
		<input type="radio" name="gender" value="어질어질">어질어질<br>
		<input type="radio" name="gender" value="빙그르르" checked="checked">빙글빙글<br>
		<input type="checkbox" name="sttr" value="동글동글">뗴굴떼굴
	</fieldset>		
	<fieldset style="width: 100px;">
		<legend>취미</legend>
		<input type="checkbox" name="habbies" value="동글동글">동그라미<br>
		<input type="checkbox" name="habbies" value="세모세모">세모라미<br>
		<input type="checkbox" name="habbies" value="네모네모">네모라미
	</fieldset><br>		
		
	<!-- 콤보, 목록상자 -->
	<select name="trip"  style="width: 150px; height: 30px">
		<option>괌</option>
		<option>후쿠오카</option>
		<option>뉴요크</option>
		<option selected="selected">코타키나발루</option>
	</select><br><br>	
		
	<select name="travel" style="width: 150px;" multiple="multiple" size="4">
		<option>텐진</option>
		<option>하카타</option>
		<option>요코하마</option>
		<option>오호리</option>
	</select><br>
	<!-- textarea는 가운데입력이라 붙여서 사용해야함 -->
	<textarea rows="10" cols="60" name="content" style="resize: none;"></textarea><br>
	
	
	<!-- <input type="button" value="네모네모" onclick="alert('세모세모')">
	<button>버튼이버튼버튼</button>
	<button type="button">랍다두비</button>
	<button type="button" onclick="alert('무가다마모')">랍다라비다비</button>
	 -->
	
</form>


</body>
</html>