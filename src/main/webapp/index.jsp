<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Etiquetas de JSTL</h1>

        <%
            if (session.getAttribute("listapèr") == null) {
                ArrayList<Persona> lista = new ArrayList<Persona>();
                //Agregamos la lista de coleccion
                lista.add(new Persona(1, "Fredy Condori", "73268208", "freddy@hotmail.es"));
                lista.add(new Persona(2, "German Martinez", "73268208", "freddy@hotmail.es"));
                lista.add(new Persona(3, "Noel Choque", "73268208", "freddy@hotmail.es"));
                //colocamos una lista como un atributo de sessiuon
                session.setAttribute("listaper", lista);
            }
        %>
        <h1>Ejemplos de JSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Ejemplo del If</a></li>
            <li><a href="jstl_foreach.jsp">Ejemplo del foreach</a></li>
            <li><a href="jstl_choose.jsp">Ejemplo del choose</a></li>
                
        </ul>

    </body>
</html>
