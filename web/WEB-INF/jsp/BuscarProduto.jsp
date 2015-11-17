
<%@page import="modelo.Funcionario"%>
<%@page import="dao.FuncionarioDao"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="controler.ListarFuncionarios"%>
<%@page import="java.util.Iterator"%>


 
  

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
<h1>Vendas</h1>


<form method="get" action="Busca"> 
  <div id="top" class="row">
    <div class="col-md-3">
        <h2>Itens</h2>
    </div>
 
    <div class="col-md-6">
        <div class="input-group h2">
            <input name="search" class="form-control" id="search" type="text" placeholder="Pesquisar Itens pela descricao">
            <span class="input-group-btn">
                <button class="btn btn-primary" type="submit">
                    <span class="glyphicon glyphicon-search"></span>
                </button>
            </span>
        </div>
    </div>
  </div><!-- /#top -->   
</form>  




   <div class="container">
          
  <table class="table table-hover">
    <thead>
      <tr>
        <th>ID</th>
        <th>Descricao</th>
        <th>Valor</th>
      
      </tr>
    </thead>
     
    <tbody>
        <c:forEach var="produto" items="${produtos}">    
      <tr> 
        <td>${produto.id_produto}</td>
        <td>${produto.nome_produto}</td>
        <td>${produto.valor_produto}</td>
        <td> 
             
                <button class="btn btn-primary" type="submit">
                    <span class="glyphicon glyphicon-shopping-cart">Adicionar</span>
                </button>
          
        </td>
        </c:forEach>
      </tr>     
    </tbody>  
    
  </table>
</div>
 </jsp:body>
</t:template>

