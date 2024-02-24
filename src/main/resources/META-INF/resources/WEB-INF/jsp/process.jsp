<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div>

		<%
		System.out.println("jsp");
		String name = "";
		int age;
		String phoneNumber = "";
		String address = "";
		System.out.println("error");
		if (request.getParameter("buttonsubmit") != null){
			name = request.getParameter("name");
			age = Integer.parseInt(request.getParameter("StudentId"));
			phoneNumber = request.getParameter("phone");
			address = request.getParameter("address");
		%>
		
				<div>
					<h1>
						<%=name%> <br/>
						<%=age%> <br/>
						<%=phoneNumber%> <br/>
						<%=address%>
					</h1>
				</div>
		
		<%	
		}else{
			response.sendRedirect("index.jsp");
		}
		%>
		
		

	</div>

</body>
</html>