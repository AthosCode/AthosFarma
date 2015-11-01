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
<%@page import="dao.FuncionarioDao"%>
<%@page import="modelo.Funcionario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

        <h1>LISTA FUNCIONARIOS</h1>
          <th><a href="cadFuncionario.jsp">voltar</a></th>
        <table border="1px" cellpadding="5px" cellspacing="0" id="alter">
            <tr> 
                <td>ID</td><td>Nome</td><td>Sobrenome</td><td>Excluir</td><td>Editar</td><td>Buscar</td>
                
               
            </tr>
            <%
                FuncionarioDao dao = new FuncionarioDao();
                List<Funcionario> funcionario = dao.Listar();
                for (Funcionario funci : funcionario) {
            %>

            <tr>
                <th><%= funci.getId()%></th>
                <th><%= funci.getNome()%></th>
                <th><%= funci.getSobrenome()%></th>
                <th><a href="ExcluirFuncionario?acao=&id=<%= funci.getId()%>"><img src="img/excluir.gif"/></a></th> 
                <th><a href="EditFuncionario?acao=&id=<%= funci.getId()%>" ><img src="img/editar.gif"/> </a></th> 
                <th><a href="EditFuncionario?acao=&id=<%= funci.getId()%>" ><img src="img/lupa.png"/> </a></th> 
              
                      
            </tr>

            <%

                }
            %>
        </table> 

    </body>
</html>


