<%-- 
    Document   : Login
    Created on : 15/11/2015, 20:39:09
    Author     : Dener
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
        <link href="css/bootstrap.css" rel="stylesheet" media="screen" />
        <script src="js/jquery-1.9.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        <title>JSP Page</title>
        
    </head>
    <body>
        
    <form class="form-horizontal" role="form" action="Autenticar" method="POST">

    <div class="jumbotron">
        <label>NOME </label>
        <input type="text" placeholder="Username" class="form-control"/>
        <label> SENHA </label>
         <input type="password" placeholder="SENHA" class="form-control"/>
         <input type="submit" class="btn btn-default" value="Login"/>
         <input type="submit" class="btn btn-danger" value="Sign up"/>
        </div>
    
</form>
    </body>
</html>
