
<%-- 
    Document   : Login
    Created on : 04/11/2015, 10:21:40
    Author     : VIVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-datepicker.min.css" />"
    </head>
    <body>
    <center>
        <form name="FormLogin" action="Autenticar" method="POST">
            <table border="0">
                <thead>
                    <tr>
                        <th colspan="2"> AUTENTICAÇÃO</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Login:</td>
                        <td> <input type="text" name="login" value="" size="26" /> </td>
                    </tr>
                    <tr>
                        <td>Senha:</td>
                        <td> <input type="password" name="senha" value="" size="26" /> </td>
                    </tr>
                    <tr>
                        <td> <input type="submit" value="Entrar" name="botaoAuth" /> </td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </center>
    
</body>
</html>
