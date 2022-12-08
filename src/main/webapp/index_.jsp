<%-- 
    Document   : index
    Created on : 31 Okt 22, 10:52:13
    Author     : fadil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Login</title>
    </head>
    <body>
        <h1>Login!</h1>
        <form action="auth.jsp" method="post">
            Username = <input type="text" name="user"> <br><br>
            Password = <input type="password" name="pass"> <br><br>
            <input type="submit" value="Login">
        </form>
    </body>
</html>
