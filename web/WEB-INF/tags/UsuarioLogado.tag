<%-- 
    Document   : UsuarioLogado
    Created on : 04/11/2015, 12:14:40
    Author     : VIVO
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="logado" %>

<c:choose>
    <c:when test="${sessaoUsuario != null}">
            ${sessaoUsuario}
            </c:when>
</c:choose>
    
    


