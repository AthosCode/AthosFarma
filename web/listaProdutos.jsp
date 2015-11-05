<%-- 
    Document   : listaUsuarios
    Created on : 23/10/2015, 16:09:52
    Author     : VIVO
--%>
<html>
    
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="scripts/listafuncionario.css "/>
    </head>
    <body>
<%@page import="dao.ProdutoDao"%>
<%@page import="modelo.Produto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

        <h1>LISTA PRODUTOS</h1>
          <th><a href="cadProduto.jsp">voltar</a></th>
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
                <th><a href="ExcluirFuncionario?acao=&id=<%= produ.getId()%>"><img src="img/excluir.gif"/></a></th> 
                <th><a href="EditFuncionario?acao=&id=<%= produ.getId()%>" ><img src="img/editar.gif"/> </a></th> 
                <th><a href="EditFuncionario?acao=&id=<%= produ.getId()%>" ><img src="img/lupa.png"/> </a></th> 
              
                      
            </tr>

            <%

                }
            %>
        </table> 

    </body>
</html>


