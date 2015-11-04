<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="logado" tagdir="/WEB-INF/tags" %>
<header>

    <div class="conteudo">

        <div id="titulo">

            <h1>
                AthosFarma
            </h1>

        </div>

        <div id="usuario">

          <img src="<c:url value="/img/login-avatar.png"/>"
            
            <div>

                <span>
                    Bem vindo!<br>
                    <logado:UsuarioLogado/>
                </span>
                
                <small>
                    
                    <a href="Login.jsp">
                        Logout
                    </a>
                    
                </small>
                
            </div>

        </div>

    </div>

</header>