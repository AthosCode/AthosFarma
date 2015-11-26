<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <script type="text/javascript">
            $('[data-datepicker]').datepicker({
                format: 'dd/mm/yyyy',
                language: 'pt-BR'
            });
        </script>
    </jsp:attribute>

    <jsp:body>
    <h1>CADASTRO PRODUTO</h1>
        <div class="conteudo">

            <form class="form-vertical" action="CadastrarProduto" method="post">
                <div class="row">

                    <div class="col-sm-6">

                       

                        <div class="form-group">
                            <label for="NomeProduto" class="control-label">
                                Nome do Produto        
                            </label>
                            <div class="">
                                <input name="tnomeProduto" 
                                       required type="text" 
                                       class="form-control" id="cnomeProduto" 
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="ValorUnitario" class="control-label">
                                Valor Unitário        
                            </label>
                            <div class="">
                                <input name="tvalorUnitario" 
                                       required type="text" 
                                       class="form-control" id="cvalorUnitario" 
                            </div>
                        </div>
                        
                        <div class="col-sm-3">
                         <div class="form-group">
                            <label for="Quantidade" class="control-label">
                                Quantidade       
                            </label>
                            <div class="">
                                <input name="quantidade" 
                                       required type="text" 
                                       class="form-control" id="cquantidade" 
                                       placeholder="Quantidade">
                            </div>
                        </div>
                        </div>
                    </div>

                    

               <div class="btn-group">
                    <div class="">
                        <button type="submit" class= "btn btn-primary" > <i class="glyphicon glyphicon-saved"></i>
                            SALVAR
                        </button>
                         </button>
                        <a  href="ListaProduto"   <button type="submit" class= "btn btn-primary" > <i class="glyphicon glyphicon-search"></i> Listar Todos </a>   
                        </button>  
                    </div>
                </div>

            </form>

        </div>        

    </jsp:body>

</t:template>