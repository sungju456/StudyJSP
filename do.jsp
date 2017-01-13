<html>
<meta charset="utf-8">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int check=0;
String[] name1 = new String[4];
String name = request.getParameter("name");
request.setCharacterEncoding("UTF-8");
name1[0] = "양찬영";
name1[1] = "유동호";
name1[2] = "우성주";
name1[3] = "이진근";

for (String input : name1) {

	if(input.equals(name)){
	session.setAttribute("name",name);
	out.println((String)session.getAttribute("name"));
	check  = 1;
	}
}

	if (check==0) {
		out.println("이름이 없습니다.");
	}
%>
<html/>
