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
      <div class="container">
          <P><br></p>
             <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-4"></div>
            <div class="panel panel-default">
        <div class="panel-body">
        <div class="page-header">
                    <h3>Login</h3>
                </div>
             <form name="FormLogin" action="Autenticar" method="post">
                <div class="form-group">
                     <label for="exampleInputEmail1">Usuario</label>
                     <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"</span>
                    <input type="password" class="form-control" id="inputGroupSuccess1" 
                   aria-describedby="inputGroupSuccess1Status" nome="cnome" value="nome">
                   </div>
                </div>
             <div class="form-group">
             <label for="exampleInputPassword1">Senha</label>
             <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"</span>
                    <input type="password" class="form-control" id="inputGroupSuccess1" 
                   aria-describedby="inputGroupSuccess1Status" name="csenha" value="senha">
          </div>
        </div>
                </hr> 
            
            <button type="submit" class="btn btn-primary">Login<span class="glyphicon glyphicon-lock"</span>Login</button>
            <p><br/><p>
                </form>
                    </div>
            </div>
        </div>
    </div>  
   
 </body>
</html>