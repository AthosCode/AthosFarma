<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="scripts/menu.css "/>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>

<div class="col-md-3">
    <ul class="nav nav-pills nav-stacked" id="nav">
        <li class="active"><a href="<c:url value="/Home"/>">Home</a></li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Cadastro<span class="caret"></span></a>
            <ul class="dropdown-menu" >
                <li><a href="<c:url value="/CadastroFuncionario"/>">Funcionarios</a></li>
                <li><a href="<c:url value="/CadastrarProduto"/>">Produtos</a></li>                        
            </ul>
        </li>
        <li><a href="<c:url value="/Busca"/>">Vendas</a></li>
        <li><a href="<c:url value=""/>">Relatorios</a></li>
    </ul>
</div>
