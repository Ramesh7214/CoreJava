# JSP

Declaratives :

<%!  Dec var  %>
 Whatever we declare in declarative will go to out side the service method in translation phase.
•	We can declare a static member, an instance variable (can declare a number or string) and methods inside the declaration tag.

Scriptlet : 

Allows to write java code within jsp. All code goes in to service method after conversion.
<%  out.println(“hello”); %>

Expression :

Expression tag evaluates the expression placed in it.
<%=      %>
What are JSP Directives?
JSP directives are the messages to JSP container. They provide global information about an entire JSP page.
JSP directives are used to give special instruction to a container for translation of JSP to servlet code.
In JSP life cycle phase, JSP has to be converted to a servlet which is the translation phase.
They give instructions to the container on how to handle certain aspects of JSP processing
Directives can have many attributes by comma separated as key-value pairs.
In JSP, directive is described in <%@ %> tags.
Syntax of Directive:
<%@ directive attribute="" %>

There are three types of directives:
1.	Page directive
2.	Include directive
3.	Taglib directive
1-	Page directive :
Syntax of Page directive:
<%@ page…%>
•	It provides attributes that get applied to entire JSP page.
•	It defines page dependent attributes, such as scripting language, error page, and buffering requirements. 
•	It is used to provide instructions to a container that pertains to current JSP page
Following are its list of attributes associated with page directive:
1.	Language – to set which language we are using
EX : <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
2.	Extends – it wont work because it can result in the fundamental changes how the page behaves. It specifically for vendors
EX : <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	   pageEncoding="ISO-8859-1"%>
<%@ page extends="demotest.DemoClass" %>
3.	Import –  used to import the specific class.
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.util.Date" pageEncoding="ISO-8859-1"%>
4.	contentType -    It defines the character encoding scheme i.e. it is used to set the content type and the character set of the response.
The default type of contentType is "text/html; charset=ISO-8859-1".

Ex : <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
5.	info -  
It defines a string which can be accessed by getServletInfo() method. This attribute is used to set the servlet description.
Ex: <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    info="Guru Directive JSP" pageEncoding="ISO-8859-1"%>




6.	session – 
JSP page creates session by default.
Sometimes we don't need a session to be created in JSP, and hence, we can set this attribute to false in that case.The default value of the session attribute is true, and the session is created.
When it is set to false, then we can indicate the compiler to not create the session by default.
Ex: <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    session="false"%>

7.	isThreadSafe -  ThreadSafe is set to "true" hence synchronization will be done, and multiple threads can be used.
Ex : <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    isThreadSafe="true"%>
8.	autoflush -  This attribute specifies that the buffered output should be flushed automatically or not and default value of that attribute is true.
Ex: <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    autoFlush="false"%>
9.	buffer -   
Using this attribute the output response object may be buffered.
We can define the size of buffering to be done using this attribute and default size is 8KB.
It directs the servlet to write the buffer before writing to the response object.
EX : 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    buffer="16KB"%>

10.	IsErrorPage -  
It indicates that JSP Page that has an errorPage will be checked in another JSP page
Any JSP file declared with "isErrorPage" attribute is then capable to receive exceptions from other JSP pages which have error pages.
Exceptions are available to these pages only.
The default value is false.
Ex : 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    isErrorPage="true"%>
conclusion : if Jsp one has errorpage as jsp Two. Then Two should contain isErrorpage attribute as true
11.	pageEncoding – 
The "pageEncoding" attribute defines the character encoding for JSP page.
The default is specified as "ISO-8859-1" if any other is not specified.
Ex : <%@ page language="java" contentType="text/html;" pageEncoding="ISO-8859-1"
    isErrorPage="true"%>

12.	errorPage -  
eX : <%@ page language="java" contentType="text/html;" pageEncoding="ISO-8859-1"
    errorPage="errorHandler.jsp"%>

13.	isELIgonored - 
IsELIgnored is a flag attribute where we have to decide whether to ignore EL tags or not.
Its datatype is java enum, and the default value is false hence EL is enabled by default
EX : <%@ page language="java" contentType="text/html;" pageEncoding="ISO-8859-1"
    isELIgnored="true"%>
In the above code, isELIgnored is true and hence Expression Language (EL) is ignored here.

2 - JSP Include directive
•	JSP "include directive” is used to include one file to the another file
•	This included file can be HTML, JSP, text files, etc.
•	It is also useful in creating templates with the user views and break the pages into header&footer and sidebar actions.
•	It includes file during translation phase

3 - JSP Taglib Directive
•	JSP taglib directive is used to define the tag library with "taglib" as the prefix, which we can use in JSP.
Ex:  <%@ taglib uri="uri" prefix="value"%>
========================================================================== 
Implicit object :
•	JSP implicit objects are created during the translation phase of JSP to the servlet.
There are 9 types of implicit objects available in the container:
1.	out
2.	request
3.	response
4.	config
5.	application
6.	session
7.	pageContext
8.	page
9.	exception
1 – out :
Out is one of the implicit objects to write the data to the buffer and send output to the client in response.
Out object allows us to access the servlet's output stream
Out is object of javax.servlet.jsp.jspWriter class

2 – request : 
The request object is an instance of java.servlet.http.HttpServletRequest and it is one of the argument of service method
It will be used to request the information like parameter, header information , server name, etc.
It uses getParameter() to access the request parameter.

3 – Response :
•	"Response" is an instance of class which implements HttpServletResponse interface
•	The response implicit object is used to content type, add cookie and redirect to response page
Ex : 
1.	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
2.	pageEncoding="ISO-8859-1"%>
3.	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
4.	<html>
5.	<head>
6.	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
7.	<title>Imlicit objcts</title>
8.	</head>
9.	<body>
10.	<%response.setContentType("text/html"); %>
11.	</body>
12.	</html>

4 - Config
•	"Config" is of the type java.servlet.servletConfig
•	It is created by the container for each jsp page
•	It is used to get the initialization parameter in web.xml
5 - Application
•	Application object is created by container one per application, when the application gets deployed.
6 - Session
•	The session is holding "httpsession".
•	Session object is used to get, set and remove attributes to session scope and also used to get session information

7 - pageContext:
•	This object is of the type of pagecontext.
•	It is used to get, set and remove the attributes from a particular scope
Scopes are of 4 types:
•	Page
•	Request
•	Session
•	Application
EX : pageContext1.jsp

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

pageContext2.jsp :

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
out.println(pageContext.getAttribute("user1"));
out.println(request.getAttribute("user2"));
out.println(session.getAttribute("user3"));
out.println(application.getAttribute("user4"));
%>

</body>
</html>
Out put : 
 

8 – page :

•	Page implicit variable holds the currently executed servlet object for the corresponding jsp.
•	Acts as this object for current jsp page.
9 – Exception
isErrorPage should be true
•	Exception is the implicit object of the throwable class.
•	It is used for exception handling in JSP.
•	The exception object can be only used in error pages.
========================================================= 

JSP Action :
•	JSP actions use the construct in XML syntax to control the behavior of the servlet engine.
•	We can dynamically insert a file, reuse the beans components, forward user to another page, etc. through JSP Actions like include and forward.
•	Unlike directives, actions are re-evaluated each time the page is accessed.



There are 11 types of action names as following:
•	jsp:useBean : 
•	jsp:include
•	jsp:setProperty
•	jsp:getProperty
•	jsp:forward
•	jsp:plugin
•	jsp:attribute
•	jsp:body
•	jsp:text
•	jsp:param
•	jsp:attribute
•	jsp:output
1	- jsp:useBean :  This action name is used when we want to use beans in the JSP page. With this tag, we can easily invoke a bean.
EX : <jsp:useBean id="" class="" />
2	- jsp:include : It also used to insert a jsp file into another file, just like include directive. It is added during request processing phase
Ex : <jsp:include page="page URL" flush="true/false">
3	jsp:setProperty : This property is used to set the property of the bean.We need to define a bean before setting the property
4	jsp:getProperty : This property is used to get the property of the bean.
EX of set and get property :
<body>

<jsp:useBean id="student" class="com.gbn.model.Student"/>

<jsp:setProperty property="name" name="student" value="Ram"/>

<jsp:getProperty property="name" name="student"/>

</body>
5	jsp:forward  : It is used to forward the request to another jsp
<jsp:forward page="forwardEx2.jsp/>
6	jsp:plugin and jps:param : The plugin action can insert Java applet, wrapped in the <object> or <embed> tags, into a JSP page.
Jsp:param is the sub element of jsp:plugin.it is used to pass the values
EX : 
Out put may not visible due to plugin issue

public class MyApplet extends JApplet {

	private JLabel label = new JLabel();

	public void init() {
		label.setHorizontalAlignment(JLabel.CENTER);
		label.setFont(new Font("Arial", Font.BOLD, 20));
		label.setForeground(Color.BLUE);

		setLayout(new BorderLayout());
		add(label, BorderLayout.CENTER);
	}

	public void start() {
		String firstName = getParameter("firstName");
		String lastName = getParameter("lastName");
		label.setText("Hello " + firstName + " " + lastName);
	}
}

Jsp :
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

7	jsp:attribute an jsp:body : 
The <jsp:element>, <jsp:attribute> and <jsp:body> actions are used to define XML elements dynamically. The word dynamically is important, because it means that the XML elements can be generated at request time rather than statically at compile time.
Ex : 
<%@page language = "java" contentType = "text/html"%>
<html xmlns = "http://www.w3c.org/1999/xhtml"
   xmlns:jsp = "http://java.sun.com/JSP/Page">
   <head><title>Generate XML Element</title></head>
   <body>
      <jsp:element name = "xmlElement">
         <jsp:attribute name = "xmlElementAttr">
            Value for the attribute
         </jsp:attribute>
         <jsp:body>
            Body for XML element
         </jsp:body>
      </jsp:element>
   </body>
</html>
This would produce the following HTML code at run time −
<html xmlns = "http://www.w3c.org/1999/xhtml" xmlns:jsp = "http://java.sun.com/JSP/Page">
   <head><title>Generate XML Element</title></head> 
   <body>
      <xmlElement xmlElementAttr = "Value for the attribute">
         Body for XML element
      </xmlElement>
   </body>
</html>



8	jsp:text :
 It is used to template text in JSP pages. Its body does not contain any other elements, and it contains only text and EL expressions.
Syntax:
<jsp:text>template text</jsp:text>
Here template text refers to only template text (which can be any generic text which needs to be printed on jsp ) or any EL expression.
Example:
Action_jsp7.jsp
1.	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
2.	    pageEncoding="ISO-8859-1"%>
3.	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
4.	<html>
5.	<head>
6.	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
7.	<title>Hello world</title>
8.	</head>
9.	<body>
10.	<jsp:text> Template Text</jsp:text>
11.	</body>
12.	</html>
9	jsp:output
It specifies the XML declaration or the DOCTYPE declaration of jsp
The XML declaration and DOCTYPE are declared by the output
1.	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
2.	pageEncoding="ISO-8859-1"%>
3.	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
4.	<html>
5.	<head>
6.	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
7.	<title>Action Guru JSP8</title>
8.	</head>
9.	<body>
10.	<jsp:output doctype-root-element="html PUBLIC" doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
11.	</body>
12.	</html>
========================================================== 
JSP Expression Language (EL) :

Expression Language (EL) is mechanism that simplifies the accessibility of the data stored in Java bean component and other object like request, session and application, etc. There are many operators in JSP that are used in EL like arithmetic and logical operators to perform an expression. It was introduced in JSP 2.0
EX : 
<body>${1+2}
</body>

Whatever we write in ${expression}, will bind to out object and printed in the UI.

Flow Control Statements:
JSP provides the power of Java to be embedded in the application. We can use all the APIs and building blocks of Java in JSP programming including control flow statements which include decision making and the loop statements.
JSP If-else :
<body>

<%! String month = "Jan"; %>

<%
if(month.equals("Jan")) {
%>
<a> celebrate sankranthi</a>
<%
} else {
%>
<a> Its not sankaranthi month</a> 
<% }%>

</body>
JSP switch : switch also write as above in the scriptlet tag
JSP For loop
It is used for iterating the elements for a certain condition, and it has three parameters.
•	Variable counter is initialized
•	Condition till the loop has to be executed
•	Counter has to be incremented
EX : 


public class Employee {

	private String name;
	private String enumber;
	private int sal;
	
	ArrayList<Employee> list ;
	
	public Employee() {
		list = new ArrayList<>();
		
		list.add(new Employee("Ram", "E418", 50000));
		list.add(new Employee("Raj", "E419", 30000));
		
	}
	
	public Employee(String name, String enumber, int sal) {
		this.name = name;
		this.enumber = enumber;
		this.sal = sal;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEnumber() {
		return enumber;
	}

	public void setEnumber(String enumber) {
		this.enumber = enumber;
	}

	public int getSal() {
		return sal;
	}

	public void setSal(int sal) {
		this.sal = sal;
	}
	
	public List<Employee> getEmployees() {
		return list;
	}

}

JSP :
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

Output : 
 



JSP Operators :
.	Access a bean property or Map entry
[]	Access an array or List element
( )	Group a subexpression to change the evaluation order
+	Addition
-	Subtraction or negation of a value
*	Multiplication
/ or div	Division
% or mod	Modulo (remainder)
== or eq	Test for equality
!= or ne	Test for inequality
< or lt	Test for less than
> or gt	Test for greater than
<= or le	Test for less than or equal
>= or ge	Test for greater than or equal
&& or and	Test for logical AND
|| or or	Test for logical OR
! or not	Unary Boolean complement
Empty	Test for empty variable values



Exception Handling in JSP :

Jsp1 :  should have errorpage page directive
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="exception2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%! String wish = "Hello";%>

	<%
if(!wish.equals("Ram")) {
	throw new RuntimeException("Exception in jsp1");
}
%>
</body>
</html>
Jsp2 : should have iserropage true
Should pass writer object o printstacktrace else it wont print on browser. It will print on cosole
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% exception.printStackTrace(response.getWriter()); %>

</body>
</html>

Output:
 



JSP MVC : 
MODEL :

public class Student {

	private String name;
	private String age;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

}

Controller :

*/
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Student student = new Student();
		student.setName(request.getParameter("name"));
		student.setAge(request.getParameter("age"));
		
		request.setAttribute("student", student);
		
		System.out.println(student.getName());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/student_view.jsp");
		dispatcher.forward(request, response);
		
	}

}

View :

Jsp1 : 
Student_edit.jsp
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="StudentServlet" method="post">
		Name : <input type="text" name="name"><br> 
		Age : <input type="text" name="age"> <br> 
		<input type="submit" value="submit">
	</form>
</body>
</htm
Student_view.jsp ;

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.gbn.controler.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
Student student = (Student) request.getAttribute("student");
%>

<%= student.getName() %>
<%= student.getAge() %>
</body>
</html>

==================================================================== 

JSTL :

We need jstl.jar inorder to work with jstl

Advantages of JSTL
1.	Standard Tag: It provides a rich layer of the portable functionality of JSP pages. It's easy for a developer to understand the code.
2.	Code Neat and Clean: As scriplets confuse developer, the usage of JSTL makes the code neat and clean.
3.	Automatic JavabeansInterospection Support: It has an advantage of JSTL over JSP scriptlets. JSTL Expression language handles JavaBean code very easily. We don't need to downcast the objects, which has been retrieved as scoped attributes. Using JSP scriptlets code will be complicated, and JSTL has simplified that purpose.
4.	Easier for humans to read: JSTL is based on XML, which is very similar to HTML. Hence, it is easy for the developers to understand.
5.	Easier for computers to understand: Tools such as Dreamweaver and front page are generating more and more HTML code. HTML tools do a great job of formatting HTML code. The HTML code is mixed with the scriplet code. As JSTL is expressed as XML compliant tags, it is easy for HTML generation to parse the JSTL code within the document.

Syntax :
<%@ taglib prefix="c" uri=http://java.sun.com/jsp/jstl/core%>

Here,
•	prefix can be used to define all the core tags and
•	uri is the library of taglib from which it is imported
1 – out :
<c:out value="Hello world"/>
2 - <c:import> 
The <c:import> is similar to jsp 'include', with an additional feature of including the content of any resource either within server or outside the server.
This tag provides all the functionality of the <include > action and it also allows the inclusion of absolute URLs. 
EX :

Jsp1 :
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="2_import2.jsp"/>
<c:import url="http://www.google.com"/>
</body>
</html>

Jsp2 :

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hello All
</body>
</html>

Output :



 


forEach :
•	It is used to iterate the number of elements in series of statements.
•	It is same as a Java forloop.
Syntax:
<c:forEach var="" begin=""  end="">
•	Here var represents variable name which will hold counter name
•	Begin represents counter begin value
•	End will represent its end value

forEach for list :

<c:forEach items="${list}" var="item">
    ${item}<br>
</c:forEach>
 
Same as in java
for (Object item : list) {
    System.out.println(item);
}

ForEach map :
<c:forEach items="${list}" var="map">
    <c:forEach items="${map}" var="entry">
        ${entry.key}<br>
        ${entry.value}<br>
    </c:forEach>
</c:forEach>

Same as in java

for (Map<K, V> map : list) {
    for (Entry<K, V> entry : map.entrySet()) {
        System.out.println(entry.getKey());
        System.out.println(entry.getValue());
    }
}

EX :


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

${} vs <% => in forEach :

In above case${} get fails due to initiation issue. If we set student from servlet to request object it wont give any issue 

•	 If :
•	It is used for Testing conditions.
•	If the tag is used to test a condition whether it is true or not based on this, the block of code would be executed.
•	Syntax:
<c:if test="${condition}></c:if>

EX :

<body>
	<c:set var="count" value="100" />
	<c:if test="${count == 100 }">
Hello All
</c:if>
</body>

•	 redirect:
•	It is used for redirecting the current page to another URL by providing the relative URL of this tag.
•	It supports context relative URLs
•	Syntax:
<c:redirect url="" context=""/>

Ex :
<body>
	<c:redirect url="http://google.com" />
	<!-- we can give our jsp pages -->

</body>

JSP Custom Tags :
It is our own tag.
Rules :
1-Write java class and extends Simpletagsupport.
2 - Override doTag() and write own logic.
3 –write tld file and register own tag
4-config it in web.xml
Full Example : 
FullNameTag.java

public class FullNameTag extends SimpleTagSupport {

	public String firstName;
	public String lastName;

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Override
	public void doTag() throws JspException, IOException {
		try {
		getJspContext().getOut().write(firstName + " " + lastName);
		} catch (Exception e) { // stop page from loading further by throwing SkipPageException
			throw new SkipPageException();
		}
	}

}
Tld file :
<?xml version="1.0" encoding="UTF-8" ?>

<taglib xmlns="http://java.sun.com/xml/ns/j2ee"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://java.sun.com/xml/ns/j2ee http://java.sun.com/xml/ns/j2ee/web-jsptaglibrary_2_0.xsd"
    version="2.0">
<description>Full name Formatter Custom Tag</description>
<tlib-version>2.1</tlib-version>
<short-name>fullName</short-name>
<uri>https://ramesh.com/jsp/tlds/fullName</uri>
<tag>
	<name>formatName</name>
	<tag-class>com.gbn.tags.FullNameTag</tag-class>
	<body-content>empty</body-content>
	<attribute>
	<name>firstName</name>
	<required>true</required>
	</attribute>
	<attribute>
	<name>lastName</name>
	<required>true</required>
	</attribute>
</tag>
</taglib>
Congiguration in web.xml :
<jsp-config>
		<taglib>
			<taglib-uri>https://ramesh.com/jsp/tlds/fullName</taglib-uri>
			<taglib-location>/WEB-INF/fullName.tld</taglib-location>
		</taglib>
	</jsp-config>
Final jsp:
<body>
<mytags:formatName lastName="ramesh" firstName="gadenaboina"/>
</body>
Output :
 
JSP file upload :
Required jars : 
Commons-fileupload.jar
Commons.io.jar
Fileupload.jsp :
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="UploadFile" method="POST" enctype="multipart/form-data">

<input type="file" name="choose_file" size="50">  <br>
<input type= "submit" value="upload">

</form>

</body>
</html>
UploadFile.java
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	     if(ServletFileUpload.isMultipartContent(request)){
	            try {
	            	
	            	//check whether there are any file objects in JSP. If any found then those file object will be taken from request.
	                List <FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
	                
	               // checking how many files are present 
	                for(FileItem item : multiparts){
	                //take one by one and write them to specified location
	                    if(!item.isFormField()){
	                        String name = new File(item.getName()).getName();
	                        item.write( new File("C:/data/prints" + File.separator + name));
	                    }
	                }
	               //File uploaded successfully
	               request.setAttribute("message", "File Uploaded Successfully");
	            } catch (Exception ex) {
	               request.setAttribute("message", "File Upload Failed due to " + ex);
	            }         		
	        }else{
	
	            request.setAttribute("message","No File found");
}
	        request.getRequestDispatcher("/result.jsp").forward(request, response);
	
	    }

Result.jsp
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
out.println(request.getAttribute("message"));
%>

</body>
</html>




