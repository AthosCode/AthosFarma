
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.FuncionarioDao"%>
<%@page import="modelo.Funcionario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

 <jsp:useBean id="dao" class="dao.FuncionarioDao"/> 
 <c:forEach items="" var="element">    
  <tr>
    <td>${element.getStatus()}</td>
    <td>${element.getRequestType()}</td>
    <td>${element.getRequestedFor()}</td>
    <td>${element.getTimeSubmitted()}</td>
  </tr>
</c:forEach>

<t:template>

    <jsp:attribute name="paginaTitulo">
        Cadastro de Funcionario
    </jsp:attribute>

    <jsp:attribute name="paginaHead">
        <!-- CSS e outros que vão no <head> da página -->
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-datepicker.min.css" />" />
    </jsp:attribute>

    <jsp:attribute name="paginaBottom">
        <!-- JavaScript e outros que vão ao final -->
        <script type="text/javascript" src="<c:url value="/js/bootstrap-datepicker.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/bootstrap-datepicker.pt-BR.min.js" />"></script>
    </jsp:attribute>
      
       
    <jsp:body>             
<h1>LISTA FUNCIONARIOS</h1>
      <div class="container">
          
  <table class="table table-hover">
    
    <thead>     
      <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Sobrenome</th>
        <th>Excluir</th>
        <th>Editar</th>
        <th>Buscar</th>
      </tr>       
    </thead>
   
    <tbody>
        <tr>
          
        <td>${funci.id}</td>
        <td>${funci.nome}</td>
        <td>${funci.sobrenome}</td>
        <td><a href="ExcluirFuncionario?acao=&id=${funcionario.id}"><img src="img/excluir.gif"/></a></td> 
        <td><a href="EditFuncionario?acao=&id=${funcionario.id}" ><img src="img/editar.gif"/> </a></td> 
        <td><a href="EditFuncionario?acao=&id=${funcionario.id}" ><img src="img/lupa.png"/> </a></td> 
      </tr>
      
    </tbody>
  </table>
</div>
     
 </jsp:body>
</t:template>

