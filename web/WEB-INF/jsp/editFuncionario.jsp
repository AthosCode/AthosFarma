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

        <div class="conteudo">

            <form class="form-vertical " action="EditarFuncionario" method="get" name="cadfuncionario" id="cadfuncionario">
                 <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="nome" class="control-label"> ID  </label>
                            <div class="">
                                <input name="tid" required type="number"  class="form-control" id="id" 
                                       placeholder="id" value="${funcionario.id}">
                            </div>
                        </div>

                    </div>

                <div class="row">

                    <div class="col-sm-6">

                        <div class="form-group">
                            <label for="nome" class="control-label">
                                Nome        
                            </label>
                            <div class="">
                                <input name="tnome" required type="text"  class="form-control" id="nome" 
                                       placeholder="Nome" value="${funcionario.nome}">
                            </div>
                        </div>

                    </div>

                    <div class="col-sm-6">

                        <div class="form-group">
                            <label for="sobrenome" class=" control-label">
                                Sobrenome
                            </label>
                            <div class="">
                                <input name="tsobrenome" required  type="text" class="form-control" 
                                  id="sobrenome" placeholder="Sobrenome" value="${funcionario.sobrenome}" >
                            </div>
                        </div>

                    </div>

                </div>

                <div class="row">

                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="cpf" class="control-label">
                                CPF
                            </label>
                            <div class="">
            <input name="tcpf" required  type="text" class="form-control"  id="cpf" placeholder="CPF" 
                   value="${funcionario.CPF}">
                            </div>
                        </div>        

                    </div>

                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="rg" class="control-label">
                                RG
                            </label>
                            <div class="">
                                <input name="trg" required 
                                       type="text" class="form-control" 
                                       id="rg" placeholder="RG" value="${funcionario.RG}">
                            </div>
                        </div>        

                    </div>

                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="dataNascimento" class="control-label">
                                Data de Nascimento
                            </label>
                            <div class="">
                                <input name="tdata" required 
                                       type="text" class="form-control" 
                                       id="dataNascimento" 
                                       placeholder="dd/mm/aaaa"
                                       data-datepicker value="${funcionario.dataNascimento}">
                            </div>
                        </div>        
                    </div>

                </div>

                <div class="row">
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label for="endereco" class="control-label">
                                Endereço
                            </label>
                            <div class="">
                                <input name="tendereco" required 
                                       type="text" class="form-control" 
                                       id="endereco" placeholder="Endereço nº" value="${funcionario.endereco}">
                            </div>
                        </div>
                    </div>     
                </div>    
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="cidade" class="control-label">
                                Cidade
                            </label>
                            <div class="">
                                <input name="tcidade" required 
                                       type="text" class="form-control" 
                                       id="cidade" placeholder="Cidade" value="${funcionario.cidade}">
                            </div>
                        </div>   
                    </div>

                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="estado" class="control-label">
                                Estado
                            </label>
                            <div class="">
                                <input name="testado" required 
                                       type="text" class="form-control" 
                                       id="estado" placeholder="Estado" value="${funcionario.estado}">
                            </div>
                        </div>   
                    </div>

                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="cep" class="control-label">
                                CEP
                            </label>
                            <div class="">
                                <input name="tcep" required 
                                       type="text" class="form-control" 
                                       id="cep" placeholder="CEP" value="${funcionario.CEP}">
                            </div>
                        </div>     
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="funcao" class="control-label">
                                Função
                            </label>
                            <div class="">
                                <select class="form-control" name="tfuncao">
                                    <option value="Vendedor">Vendedor</option>
                                    <option value="Gerente">Gerente</option>
                                </select>
                                
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="salario" class="control-label">
                                Salario
                            </label>
                            <div class="">
                                <input name="tsalario" 
                                       type="text" class="form-control" 
                                       id="salario" placeholder="Salario" value="${funcionario.salario}">
                            </div>
                        </div>
                    </div>
                    
                </div>

                 <div class="btn-group">
                    <div class="">
                        <button type="submit" class= "btn btn-primary" > <i class="glyphicon glyphicon-saved"></i>
                            Salvar
                        </button>
                        <a  href="ListaFuncionarios"   <button type="submit" class= "btn btn-primary" > <i class="glyphicon glyphicon-search"></i> Listar Todos </a>
                            
                        </button>   
                    </div>
                </div>

            </form>

        </div>        

    </jsp:body>

</t:template>