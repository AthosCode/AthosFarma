<%-- 
    Document   : cadFuncionario
    Created on : 26/10/2015, 13:14:09
    Author     : VIVO
--%>

<%@page import="modelo.Produto"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProdutoDao"%>
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
        <form action="ListaPaginado" method="post" name="listaproduto" id="listaproduto">
                Search: <input type="text" name="tsearch" id="csearch"/>
                <input type="submit" value="serch"/> 
           </form>
             </div>
        
         <table border="1px" cellpadding="5px" cellspacing="0" id="alter">
            <tr> 
                <td>ID</td><td>Produto</td><td>Valor Unitario</td><td>Excluir</td><td>Editar</td><td>Buscar</td>
            
                
               
            </tr>
            <%
                ProdutoDao dao = new ProdutoDao();
                List<Produto> produto = dao.Listar();
                for (Produto produ : produto) {
                    
                    
            %>

            <tr>
                <th><%= produ.getId()%></th>
                <th><%= produ.getNome_produto()%></th>
                <th><%= produ.getValor_produto()%></th>
                <th><a href="ExcluirFuncionario?acao=&id=<%= produ.getId()*10%>"></a></th> 
                <th><a href="EditFuncionario?acao=&id=<%= produ.getId()%>" ><img src="img/editar.gif"/> </a></th> 
                <th><a href="EditFuncionario?acao=&id=<%= produ.getId()%>" ><img src="img/lupa.png"/> </a></th> 
              
                      
            </tr>

            <%

                }
            %>
        </table> 

       
</html>