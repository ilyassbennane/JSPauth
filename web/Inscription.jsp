<%-- 
    Document   : resetPassword
    Created on : Oct 15, 2023, 9:37:46 PM
    Author     : ILYASS BENNANE
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('back.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }

        .form {
            background-color: white;
            opacity: 0.9;
            border-radius: 10px;
            padding: 20px;
        }

        .form input {
            margin: 5px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <div class="form">
            <h1>Inscription</h1>
            <form class="form" action="Inscription" method="POST">
                <input type="text" name="nom" class="form-control" placeholder="Nom">
                <input type="text" name="prenom" class="form-control" placeholder="Prénom">
                <input type="text" name="email" class="form-control" placeholder="Email">
                <input type="password" name="password" class="form-control" placeholder="Mot de passe">
                <input type="date" name="date" class="form-control" placeholder="Date de naissance">
                <input type="submit" class="btn btn-primary" value="Valider">
            </form>
        </div>
    </div>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
