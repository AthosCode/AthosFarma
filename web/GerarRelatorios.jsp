
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
        <!-- CSS e outros que v�o no <head> da p�gina -->
        <link rel="stylesheet" type="text/css" href="" />
    </jsp:attribute>

    <jsp:attribute name="paginaBottom">
        <!-- JavaScript e outros que v�o ao final -->
        <script type="text/javascript" src=""></script>
    </jsp:attribute>
      
       
    <jsp:body>             
<h1>Relat�rios</h1>

      <div class="container">
          
          <h3>Filial: </h3>
  <table class="table table-hover">
    
    <thead>     
      <tr>
        <th>Codigo</th>
        <th>Descri�ao</th>
        <th>Valor Unitario</th>
        <th>Valor Total</th>
        
       
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

