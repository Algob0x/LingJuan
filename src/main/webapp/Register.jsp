<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Register</title>
    <script>
        function validate()
        {
            var fullname = document.form.fullname.value;
            var email = document.form.email.value;
            var username = document.form.username.value;
            var password = document.form.password.value;
            var conpassword= document.form.conpassword.value;

            if (fullname==null || fullname=="")
            {
                alert("N'oubliez pas d'écrire votre nom complet");
                return false;
            }
            else if (email==null || email=="")
            {
                alert("N'oubliez pas d'écrire votre email");
                return false;
            }
            else if (username==null || username=="")
            {
                alert("N'oubliez pas d'écrire votre nom d'utilisateur");
                return false;
            }
            else if(password.length<6)
            {
                alert("Votre mot de passe doit faire au moins 6 caractères.");
                return false;
            }
            else if (password!=conpassword)
            {
                alert("Les deux mots de passe doivent être identiques");
                return false;
            }
        }
    </script>
</head>
<body>
<center><h2>Lingjuan's Project</h2></center>
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
