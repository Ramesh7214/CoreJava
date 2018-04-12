<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
        <jsp:plugin
            type="applet"
            code="com.gbn.applet.MyApplet.class"
            codebase="com.gbn.applet"
            align="">
             
            <jsp:params>
                <jsp:param name="firstName" value="James" />
                <jsp:param name="lastName" value="Bond" />
            </jsp:params>
             
            <jsp:fallback>
                <p>Could not load applet!</p>
            </jsp:fallback>
             
        </jsp:plugin>
    </div>
</body>
</html>