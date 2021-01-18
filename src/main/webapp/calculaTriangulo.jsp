<%-- 
    Document   : calculaTriangulo
    Created on : 18 ene. 2021, 19:35:42
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--@page import="clases.Triangulo"--%>
        <jsp:useBean id="miTriangulo" class="clases.Triangulo"/>
        <%
        //Triangulo t = new Triangulo();
        float base = Float.parseFloat(request.getParameter("base"));
        float altura = Float.parseFloat(request.getParameter("altura"));
        //t.setBase(base);
        //t.setAltura(altura);
        %>
        <jsp:setProperty name="miTriangulo" property="base" value="<%=base%>"/>
        <jsp:setProperty name="miTriangulo" property="altura" value="<%=altura%>"/>
        <h3>El área del triángulo es <jsp:getProperty name='miTriangulo' property="area" /></h3> 
        <a href='index.jsp'>Volver a inicio</a>
    </body>
</html>
