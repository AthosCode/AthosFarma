
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
<h1>LISTA MEDICAMENTOS</h1>
      <div class="container">
          
  <table class="table table-hover">
    
    <thead>     
      <tr>
        <th>Codigo</th>
        <th>Descriçao</th>
        <th>ValorUnitario</th>
        
       
      </tr>       
    </thead>
   
    <tbody>
      <c:forEach var="produto" items="${produtos}">    
      <tr> 
        <td>${produto.id_produto}</td>
        <td>${produto.nome_produto}</td>
        <td>${produto.valor_produto}</td> 
      </tr>
      </c:forEach> 
    </tbody>
  </table>
</div>
     
 </jsp:body>
</t:template>

