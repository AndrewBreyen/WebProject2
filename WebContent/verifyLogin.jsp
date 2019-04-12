<%@page language="java" import="edu.csbsju.csci230.*"%>
<% UserController userC = (UserController)session.getAttribute("uc1");

	if (userC == null || userC.isLoggedIn() == false){
		response.sendRedirect("index.jsp?Error=-4"); 
		return;
	}
%>