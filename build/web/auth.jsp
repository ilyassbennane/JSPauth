<%-- 
    Document   : resetPassword
    Created on : Oct 15, 2023, 9:37:46 PM
    Author     : ILYASS BENNANE
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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

        .login-container {
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
        }

        .login-form {
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="container login-container">
        <div class="row">
            <div class="col-md-12 form-background">
                <div class="login-form">
                    <h1>Login</h1>
                    <form action="auth" method="POST">
                        <div class="form-group">
                            <input type="text" name="email" class="form-control" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-primary" value="Login">
                        </div>
                    </form>
                    <div>${msg}</div>
                    <p>Créer un compte? <a href="Inscription.jsp">Inscription</a></p>
                    <a href="forgotPassword.jsp">Mot de passe oublié ?</a>
                </div>
            </div>
        </div>
    </div>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
