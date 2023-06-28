<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에치티엠엘</title>
</head>
<body>

에치티엠엘화면<br>

<%
	// post로 한글사용시 한글처리 필요
	// request.getParameter 실행보다 먼저 선언돼야 함
	request.setCharacterEncoding("UTF-8");

	// get은 8 이전버전 사용시 서버 환경설정에서 설정
	
	// text타입: String
	String name = request.getParameter("name");
	out.println(name + "님 안녕하세요<br>");
	String id = request.getParameter("id");
	out.println(name + "님의 ID: " + id + "<br>");
	String password = request.getParameter("password");
	out.println(id + "님의 password: " + password + "<br>");
	try {
		int age = Integer.parseInt(request.getParameter("age"));
		out.println(id + "님의 나이: " + age + "<br>");
		out.println(id + "님의 내년 나이: " + (age + 1) + "<br>");		
	} catch (NumberFormatException e) {
		out.println("잘못된 나이가 입력되었습니다.<br>");
		out.println("<script>");
		out.println("alert('잘못된 나이가 입력되었습니다.')");
		out.println("</script>");
	}
	
	try {
		String gender = request.getParameter("gender");
		out.println(gender + "<br>");
		String[] habbies = request.getParameterValues("habbies");
		out.println(Arrays.toString(habbies) + "<br>");
		out.println(habbies[0] + "<br>");
		out.println(habbies[1] + "<br>");
		out.println(habbies[2] + "<br>");
		for (int i=0;i<habbies.length;i++){
			out.println(habbies[i] + "<br>");
		}		
	} catch (NullPointerException e) {
		out.println("<script>");
		out.println("alert('너는취미도없냐.')");
		out.println("</script>");
	}
	
	String trip = request.getParameter("trip");
	out.println(id + "님의 여행지: " + trip + "<br>");
	String[] travel = request.getParameterValues("travel");
	for (int i=0;i<travel.length;i++){
		out.println(id + "님의 여행지: " + travel[i] + "<br>");
	}
	
	String content = request.getParameter("content");
	//out.print(content.replace("<", "&lt;").replace(">", "&rt;") +"<br>");
	//out.print(content.replace("/r/n", "<br>") +"<br>");
	out.print(content.replace("<", "&lt;").replace(">", "&gt;").replace("\r\n", "<br>") +"<br>");
%>


</body>
</html>