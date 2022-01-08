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
<% //Si l'utilisateur connecté n'est pas Modérateur, on le renvoie vers la page de connection
    if((request.getSession(false).getAttribute("Admin")== null) )
    {
%>
<jsp:forward page="/Login.jsp"></jsp:forward>
<%} %>
<style>
    html {
        line-height: 1.15;
        -webkit-text-size-adjust: 100%;
        box-sizing: border-box;
    }

    *,
    *:before,
    *:after {
        box-sizing: inherit;
    }

    :root {
        --main-accent-color: #9b45e4;
        --secondary-accent-color: #e13a9d;
    }

    a {
        background-color: transparent;
    }

    img {
        border-style: none;
    }

    button {
        font-family: inherit;
        font-size: 100%;
        line-height: 1.15;
        margin: 0;
        overflow: visible;
        -webkit-appearance: button;
    }

    button::-moz-focus-inner,
    [type="button"]::-moz-focus-inner {
        border-style: none;
        padding: 0;
    }

    body {
        margin: 0;
        background: #e6b2c6;
        background: -webkit-linear-gradient(to right, #e6b2c6, #d6e5fa);
        background: linear-gradient(to right, #e6b2c6, #d6e5fa);
        font-family: "Lato", sans-serif;
        font-weight: normal;
        background-repeat: no-repeat;
    }

    .container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, auto));
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }

    .card {
        padding: 1em;
        border-radius: 0.8em;
        background-color: #fefefe;
        box-shadow: 0 2.8px 2.2px rgba(0, 0, 0, 0.02),
        0 6.7px 5.3px rgba(0, 0, 0, 0.028), 0 12.5px 10px rgba(0, 0, 0, 0.035),
        0 22.3px 17.9px rgba(0, 0, 0, 0.042), 0 41.8px 33.4px rgba(0, 0, 0, 0.05),
        0 100px 80px rgba(0, 0, 0, 0.07);
        position: relative;
    }

    .card:after {
        content: "";
        position: absolute;
        width: 15px;
        height: 15px;
        border-radius: 50%;
        top: 25px;
        right: 96px;
        border: 2px solid white;
    }

    .card__image {
        width: 100px;
        border-radius: 50%;
    }

    .card__info {
        margin: 1em 0;
        list-style-type: none;
        padding: 0;
    }

    .card__info li {
        display: inline-block;
        text-align: center;
        padding: 0.5em;
    }

    .card__info__stats {
        color: var(--main-accent-color);
        font-weight: bold;
        font-size: 1.2em;
        display: block;
    }

    .card__info__stats + span {
        color: #969798;
        text-transform: uppercase;
        font-size: 0.8em;
        font-weight: bold;
    }

    .card__text h2 {
        margin-bottom: 0.3em;
        font-size: 1.4em;
        color: #6f6f6f;
    }

    .card__text p {
        margin: 0;
        color: #999;
        font-size: 0.95em;
    }

    .card__action {
        display: flex;
        justify-content: space-around;
    }

    .card__action__button {
        padding: 0.9em 1.3em;
        text-transform: uppercase;
        color: #fff;
        border: none;
        border-radius: 0.5em;
        cursor: pointer;
        position: relative;
    }

    .card__action__button:before {
        content: "";
        position: absolute;
        border-radius: 0.5em;
        transition: all 0.35s ease-in-out;
    }

    .card__action__button:hover:before {
        top: -6px;
        bottom: -6px;
        left: -6px;
        right: -6px;
    }

    .card__action--follow {
        background-color: var(--main-accent-color);
    }

    .card__action__button:hover:before {
        border: 4px solid var(--main-accent-color);
    }

    .card__action--message {
        background-color: var(--secondary-accent-color);
    }

    .card__action--message:hover:before {
        border: 4px solid var(--secondary-accent-color);
    }

    @media (min-width: 425px) {
        .card {
            padding: 3em;
        }

        .card:after {
            top: 50px;
            right: 160px;
        }

        .card__info li {
            padding: 1em;
        }
        .card__action__button {
            padding: 0.9em 1.8em;
        }
    }
</style>
<body>

<main class="container">
    <div class="card">
        <div class="card__text">
            <h2><%=request.getAttribute("userName") %></h2>
            <p>ADMINISTRATEUR</p>
        </div>
        <div class="card__action">
            <form>
                <button class="card__action__button card__action--follow" onclick="location.href='http://localhost:8080/mvc-1.0-SNAPSHOT/Registerm.jsp'" type="button">Créer compte modérateur</button>
            </form>
        </div>
        <div class="card__action">
            <button class="card__action__button card__action--follow">MES BILLETS</button>
            <button class="card__action__button card__action--message">DECONNEXION</button>
        </div>
    </div>
</main>
Content de vous revoir <%=request.getAttribute("userName") %>

<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Déconnexion</a></div>
</body>
</html>
