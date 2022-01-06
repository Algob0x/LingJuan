<%--
  Created by IntelliJ IDEA.
  User: thomassanfourche
  Date: 06/01/2022
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Admin Page</title>
</head>
<% //In case, if Admin session is not set, redirect to Login page
    if((request.getSession(false).getAttribute("Admin")== null) )
    {
%>
<jsp:forward page="/Login.jsp"></jsp:forward>
<%} %>
<body>
<center><h2>Accueil Administrateur</h2></center>

Content de vous revoir <%=request.getAttribute("userName") %>

<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Déconnexion</a></div>
</body>
</html>
