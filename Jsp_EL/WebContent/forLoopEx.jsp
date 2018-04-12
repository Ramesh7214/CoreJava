<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.example.myproject.Employee"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!Employee empl = new Employee();%>
	<%
		java.util.List<Employee> list = empl.getEmployees();
	%>
	<table>
		<tr>
			<th>Name</th>
			<th>ID</th>
			<th>Salary</th>
		</tr>
		<%
			for(Employee emp : list) {
		%>
		<tr>
			<td><%=emp.getName()%></td>
			<td><%=emp.getEnumber()%></td>
			<td><%=emp.getSal()%></td>
		</tr>
		<%
			}
		%>

	</table>
</body>
</html>