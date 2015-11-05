
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.FuncionarioDao"%>
<%@page import="modelo.Funcionario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c"%>

 

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
        <script type="text/javascript">
            $('[data-datepicker]').datepicker({
                format: 'dd/mm/yyyy',
                startDate: '0',
                language: 'pt-BR'
            });
        </script>
    </jsp:attribute>
        
          

    <jsp:body>

        
        
        
      

       
            
<h1>LISTA FUNCIONARIOS</h1>
      <div class="container">
          
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Id</th>
        <th>Nome</th>
        <th>Sobrenome</th>
        <th>Excluir</th>
        <th>Editar</th>
        <th>Buscar</th>
      </tr>       
    </thead>
    <tbody>
      <tr>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>
   </jsp:body>

</t:template>