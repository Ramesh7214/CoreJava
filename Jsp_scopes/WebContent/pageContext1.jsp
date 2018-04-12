<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
pageContext.setAttribute("user1", "Ramesh", pageContext.PAGE_SCOPE);
pageContext.setAttribute("user2", "raju", pageContext.REQUEST_SCOPE);
pageContext.setAttribute("user3", "gautham", pageContext.SESSION_SCOPE);
pageContext.setAttribute("user4", "venkat", pageContext.APPLICATION_SCOPE);

out.println(pageContext.getAttribute("user1"));
out.println(request.getAttribute("user2"));
out.println(session.getAttribute("user3"));
out.println(application.getAttribute("user4"));
%>

<a href="pagecontext2.jsp">click here</a>

</body>
</html>