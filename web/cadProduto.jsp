<%-- 
    Document   : cadFuncionario
    Created on : 26/10/2015, 13:14:09
    Author     : VIVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="scripts/cadastr.css "/>
    </head>
    <body>
        <div id="cadastro">
        <form action="CadastroProduto" method="get" name="cadfuncionario" id="cadfuncionario">
                Nome_Produto: <input type="text" name="tnome_produto" id="cnome" required/>
                Valor Unitario: <input type="text" name="tvalor_produto" id="csobrenome" required/><br><br>
                <input type="submit" value="SALVAR"/> 
                 <th><a href="Listar.jsp">Listar Todos</a>
           </form>
             </div>
       
</html>