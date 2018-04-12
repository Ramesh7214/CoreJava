<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.gbn.model.Student"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Student student = new Student();
			ArrayList<Student> students = (ArrayList) student.getStudents();
	%>

<%-- 	<c:forEach items="${students}" var="stud"> -- it wont work due to initialization issue
  Name : ${stud.name}
  
</c:forEach> --%>

<c:forEach items="<%= students%>" var="stud">
  Name : ${stud.name}
  
</c:forEach>

</body>
</html>