
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.FuncionarioDao"%>
<%@page import="modelo.Funcionario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>



<t:template>

    <jsp:attribute name="paginaTitulo">
        Cadastro de Funcionario
    </jsp:attribute>

    <jsp:attribute name="paginaHead">
        <!-- CSS e outros que v�o no <head> da p�gina -->
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-datepicker.min.css" />" />
    </jsp:attribute>

    <jsp:attribute name="paginaBottom">
        <!-- JavaScript e outros que v�o ao final -->
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
       
      <c:forEach items="${listafuncionarios}" var="funcionario" >
        <tr> 
        <td>${funcionario.id}</td>
        <td>${funcionario.nome}</td>
        <td>${funcionario.sobrenome}</td>
        <td><a href="ExcluirFuncionario?acao=&id=${funcionario.id}"><img src="img/excluir.gif"/></a></td> 
        <td><a href="EditFuncionario?acao=&id=${funcionario.id}" ><img src="img/editar.gif"/> </a></td> 
        <td><a href="EditFuncionario?acao=&id=${funcionario.id}" ><img src="img/lupa.png"/> </a></td> 
      </tr>
      </c:forEach> 
    </tbody>
  </table>
</div>
     
 </jsp:body>
</t:template>

