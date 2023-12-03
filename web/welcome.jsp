<%-- 
    Document   : resetPassword
    Created on : Oct 15, 2023, 9:37:46 PM
    Author     : ILYASS BENNANE
--%>

<%@page import="ma.projet.entity.Client"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <%! Client c;%>
        <%
            if (session == null) {
                response.sendRedirect("auth.jsp");
            } else {
                c = (Client) session.getAttribute("client");
            }
        %>
        <div class="container d-flex justify-content-center align-items-center h-100">
            <div class="text-center">
                <h1>Welcome: <%= c.getNom()%></h1>
                <button id="logoutButton" class="btn btn-primary mt-3">Se déconnecter</button>

            </div>
        </div>
        <script>
            document.getElementById('logoutButton').addEventListener('click', function () {
                window.location.href = 'auth.jsp';
            });
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
