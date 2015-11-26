
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
        <link rel="stylesheet" type="text/css" href="" />
    </jsp:attribute>

    <jsp:attribute name="paginaBottom">
        <!-- JavaScript e outros que vão ao final -->
        <script type="text/javascript" src=""></script>
    </jsp:attribute>


    <jsp:body>             
        <h1>Relatórios</h1>

        <form class="form-vertical" action="CadastrarProduto" method="post">
            <div class="row">

                <div class="col-sm-6">



                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="funcao" class="control-label">
                                    Filial 
                                </label>
                                <div class="">
                                    <select class="form-control" name="funcao">
                                        <option></option>
                                        <option value="Vendedor">São Paulo</option>
                                        <option value="Gerente">Belo Horizonte</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="btn-group">
                        <div class="">
                            <button type="submit" class= "btn btn-primary" > <i class="glyphicon glyphicon-saved"></i>
                                GERAR
                            </button>

                        </div>
                    </div>

                </div>
            </div>
        </form>


        <!-- <div class="container">
            
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
  </div> -->

    </jsp:body>
</t:template>

