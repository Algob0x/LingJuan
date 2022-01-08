<%--
  Created by IntelliJ IDEA.
  User: thomassanfourche
  Date: 06/01/2022
  Time: 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Page Modérateur</title>
</head>
<% //Si l'utilisateur connecté n'est pas Modérateur, on le renvoie vers la page de connection
    if((request.getSession(false).getAttribute("Moderator")== null) )
    {
%>
<jsp:forward page="/Login.jsp"></jsp:forward>
<%} %>
<body>
<center><h2>Accueil Modérateur</h2></center>

Content de vous revoir <%=request.getAttribute("userName") %>

<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Déconnexion</a></div>
<form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
    <table align="center">
        <tr>
            <td>Nom complet</td>
            <td><input type="text" name="fullname" /></td>
        </tr>
        <tr>
            <td>Adresse Mail</td>
            <td><input type="text" name="email" /></td>
        </tr>
        <tr>
            <td>Nom d'utilisateur</td>
            <td><input type="text" name="username" /></td>
        </tr>
        <tr>
            <td>Mot de passe</td>
            <td><input type="password" name="password" /></td>
        </tr>
        <tr>
            <td>Mot de passe</td>
            <td><input type="password" name="conpassword" /></td>
        </tr>
        <tr>
            <td><%=(request.getAttribute("errMessage") == null) ? ""
                    : request.getAttribute("errMessage")%></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Register"></input><input
                    type="reset" value="Reset"></input></td>
        </tr>
    </table>
</form>
</body>
</html>