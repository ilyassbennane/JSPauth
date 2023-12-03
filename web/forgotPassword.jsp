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
    <title>Mot de passe oublié</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('back.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-background {
            background-color: white;
            opacity: 0.9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            padding: 20px;
        }

        .form-group {
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="col-md-12 form-background">
            <h1>Mot de passe oublié</h1>
            <form action="ForgetPassword" method="POST">
                <div class="form-group">
                    <input type="text" name="email" class="form-control" placeholder="Email">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Envoyer le code de vérification">
                </div>
            </form>
            <div class="error-message">${msg}</div>
        </div>
    </div>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
