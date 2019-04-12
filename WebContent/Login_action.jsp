<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>


<%%>

<%
	UserController uc = new UserController();

	String username = request.getParameter("Username");
	String password = request.getParameter("Password");

	int status = uc.login(username, password);

	if (status == 0) {
		session.setAttribute("uc1", uc);
		response.sendRedirect("Menu.jsp");
	}
	else {
		if (status == -1) {
			out.println("Username Incorrect");
			response.sendRedirect("index.jsp?Error=-1");
		}
		if (status == -2) {
			out.println("Password Incorrect");
			response.sendRedirect("index.jsp?Error=-2");
		}
		if (status == -3) {
			out.println("Error Accessing Database");
			response.sendRedirect("index.jsp?Error=-3");
		}
	}
%>

