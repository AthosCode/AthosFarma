<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="paginaTitulo" fragment="true" %>
<%@attribute name="paginaHead" fragment="true" %>
<%@attribute name="paginaBottom" fragment="true" %>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
        <meta name="author" content="Dener Modesto, Marcos Vinicis, Aline Morato" />

        <link rel="shortcut icon" href="<c:url value="/img/favicon.ico" />" type="image/x-icon" />

        <title>
            <jsp:invoke fragment="paginaTitulo"/>
            - AthosFarma
        </title>

        <!-- CSS Base -->
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css" />" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/base.css" />" />

        <!-- CSS Externo: icones -->
        <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />

        <jsp:invoke fragment="paginaHead"/>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>
        <t:header />

        <div class="container-fluid">

            <div class="row">

                <div class="col-sm-2 padding-top-15">
                    <t:sidebar />

                </div>
                    
                <div class="col-sm-10 padding-top-15">
                    <jsp:doBody />
                </div>

            </div>

        </div>

        <!-- JS Base -->
        <script type="text/javascript" src="<c:url value="/js/jquery.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/bootstrap.min.js" />"></script>

        <jsp:invoke fragment="paginaBottom"/>

    </body>
</html>