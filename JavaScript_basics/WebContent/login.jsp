<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

function validate() {
	if(document.login.userName.value == "Ramesh") {
		return true;
	} else {
		alert("Please enter name as Ramesh");
		document.login.userName.focus();
		return false;
	}
} 

</script>

</head>
<body>

<form  name="login" action="success.jsp" onsubmit="return validate()">

userName : <input type="text" name="userName" /> <br>
password : <input type="password" name="password" > <br>
<input type="submit" value="login">

</form>

</body>
</html>