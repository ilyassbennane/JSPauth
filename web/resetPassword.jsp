<%-- 
    Document   : resetPassword
    Created on : Oct 15, 2023, 9:37:46 PM
    Author     : ILYASS BENNANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="col-md-6 offset-md-3 mt-5">
            <h1>Reset Password</h1>
            <form action="ResetPassword" method="POST">
                <div class="form-group">
                    <input type="password" name="newPassword" class="form-control" placeholder="Enter New Password">
                </div>
                <div class="form-group">
                    <input type="password" name="confirmPassword" class="form-control" placeholder="Confirm Password">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Reset Password">
                </div>
            </form>
            <div class="mt-3">
                <p>${msg}</p>
            </div>
        </div>
    </div>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
