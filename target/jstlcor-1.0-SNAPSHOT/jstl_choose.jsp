<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejemplo del Choose</h1>
        <p>Para visualizar el texto condiciones necsita agregar un paarametro en la barra de direcciones con alores A,S,I eje. ?estado=A</p>
        <c:choose>
            <c:when test="${param.estado == 'A'}">
                <h4 style="color: blue">ACTIVO</h4>
            </c:when>
            <c:when test="${param.estado == 'S'}"> 
                <h4 style="color: red">suspendido</h4>
            </c:when>
            <c:when test="${param.estado == 'I'}"> 
                <h4 style="color: green">Inactivo</h4>
            </c:when>    
                <c:otherwise>
                    <p>*******Sinn estado***</p>
                </c:otherwise>
        </c:choose>
                    <a href="index.jsp">Volver</a>
    
    </body>
</html>
