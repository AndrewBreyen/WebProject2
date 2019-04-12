<%@include file="verifyLogin.jsp"%>
<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>

<%
	UserController uc = (UserController)session.getAttribute("uc1");
	String username = request.getParameter("Username");
    out.println("delete user : " + username);
	User myUser = uc.getSpecificUser(username);
	uc.deleteUser(myUser);
	response.sendRedirect("Menu.jsp");	
%>