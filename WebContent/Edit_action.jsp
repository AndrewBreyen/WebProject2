<%@include file="verifyLogin.jsp"%>
<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>

<%UserController uc = (UserController)session.getAttribute("uc1");
String fn = request.getParameter("FirstName");
String ln = request.getParameter("LastName");
String un = request.getParameter("Username");
String p = request.getParameter("Password");
String t = request.getParameter("Type");
String s = request.getParameter("Status");
char type = t.charAt(0);
char stat = s.charAt(0);
User myUser = new User(fn, ln, un, p, type, stat);
uc.editUser(myUser);

out.println("user heckin added!");

response.sendRedirect("Menu.jsp");
%>
