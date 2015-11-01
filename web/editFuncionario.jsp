<%-- 
    Document   : editFuncionario
    Created on : 26/10/2015, 15:07:03
    Author     : VIVO
--%>


<%@page import="java.util.List"%>
<%@page import="modelo.Funcionario"%>
<%@page import="dao.FuncionarioDao"%>
<%@page import="javax.servlet.*"%>  
<%@page import="javax.servlet.http.*"%>  

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="scripts/cadastro.css "/>
    </head>
    <body>
        <div id="cadastro">
            <c:out value="${funcionario}"/> 
            <form action="EditarFuncionario" method="get" name="cadfuncionario" id="cadfuncionario">
                id: <input type="text" name="tid" id="cid" value="${funcionario.id}"/>
                Nome: <input type="text" name="tnome" id="cnome" value="${funcionario.nome}" required/>
                Sobrenome: <input type="text" name="tsobrenome" id="csobrenome"value="${funcionario.nome}" required/><br><br>
                CPF: <input type="text" name="tcpf" id="ccpf" maxlength="14" OnKeyPress="formatar('###.###.###-##', this)"/>
                RG: <input type="text" name="trg" id="crg"/>
                Data Nascimneto: <input type="date" name="tdata" id="cdata"/><br><br>
                Endereço: <input type="text" name="tendreco" id="cendereco" placeholder="Rua" size="50" maxlength="30"/><br><br>
                CEP: <input type="text" name="tcep" id="ccep"/>
                Cidade: <input type="text" name="tcidade" id="ccidade"/><br><br>
                Função: <input type="text" name="tfuncao" id="cfuncao"/>
                Salario: <br><br>
                Data Admisao: <input type="date" name="tadmisao" id="cadmisao"/>
                Data Demisao: <input type="date" name="tdemisao" id="cdemisao"/><br><br>
                <input type="submit" value="SALVAR"/> 
                <th><a href="listaFuncionario.jsp">Listar Todos</a>
            </form>
        </div>

</html>