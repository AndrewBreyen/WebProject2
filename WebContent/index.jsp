<html>
<head>

<%
	String error = request.getParameter("Error");

	if (error != null) {
		int e = Integer.parseInt(error);
		if (e == -1)
			out.println("<h1>Username Incorrect</h1>");
		if (e == -2)
			out.println("<h1>Password Incorrect</h1>");
		if (e == -3)
			out.println("<h1>Error Accessing Database</h1>");
		if (e == -4)
			out.println("<h1>User not logged in, must be logged in to access system pages</h1>");
	}
%>
<title>Login Form</title>
</head>
<body>
	<br> Login form:
	<br>
	<br>
	<form method="post" action="Login_action.jsp" name="Login">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input name="Username">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Password">
					</td>
				</tr>

				<td style="vertical-align: top;"><input value="Log in"
					name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td style="vertical-align: top;"><input value="Reset"
					name="Reset" type="reset"></td>
			</tbody>
		</table>
		<br>
	</form>
	<br>
</body>
</html>