
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.FuncionarioDao"%>
<%@page import="modelo.Funcionario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>



<t:template>

    <jsp:attribute name="paginaTitulo">
       AthosFarma
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
        <th>Excluir Salvar </th>
       
      </tr>       
    </thead>
   
    <tbody>
       
      <c:forEach items="${listafuncionarios}" var="funcionario" >
        <tr> 
        <td>${funcionario.id}</td>
        <td>${funcionario.nome}</td>
        <td>${funcionario.sobrenome}</td>
        <td>
            <div class="btn-group">
              <a href="Editar?acao=&id=${funcionario.id}" type="button" class="btn btn-primary" title="Deseja realmente excluir o projeto?" data-toggle="confirmation" data-singleton="true" data-popout="true"><i class="glyphicon glyphicon-pencil" title="Excluir o projeto"></i> Editar</a>
              <a href="ExcluirFuncionario?acao=&id=${funcionario.id}" type="button" class="btn btn-outline btn-danger" title="Deseja realmente excluir o projeto?" data-toggle="confirmation" data-singleton="true" data-popout="true"><i class="fa fa-trash-o fa-fw" title="Excluir o projeto"></i> Deletar</a> 
             </div>
        </td> 
      </tr>
      </c:forEach> 
    </tbody>
  </table>
</div>
     
 </jsp:body>
</t:template>

