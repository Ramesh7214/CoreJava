<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!--  Iam commet tag -->

<!-- Declarative -->

<%!
public String display(String name) {
	return "Hello, "+ name;
}
%>

<!-- Scriptlet -->
<%
String name = "JSP";
%>

<!-- Expression -->
<%=
display(name)

%>

</body>
</html>