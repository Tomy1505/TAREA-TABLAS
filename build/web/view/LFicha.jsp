<%-- 
    Document   : LFicha
    Created on : 25/05/2023, 6:25:38 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Model.Ficha"%>
<%@page import="java.util.List"%>
<%@page import="ModelDao.FichaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                font-family: monospace;
                font-size: 20px;
            }
            .contenedor{
                background-color: lightblue;
                height: 98vh;
                margin: 0%;
                
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }
        </style>
    </head>
    <body>
        <div class="contendor">
            <h1>APRENDICES LISTADOS</h1>
            <table border="1" cellpadding="10" >
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>documento</th>
                        <th>nombre</th>
                        <th>apellido</th>
                        <th>email</th>
                        <th>telefono</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <%
                    FichaDao fdao = new FichaDao();
                    List<Ficha>lista = fdao.listarficha();
                    Iterator<Ficha>it=lista.iterator();
                    Ficha fi = null;
                    while (it.hasNext()) {                            
                            fi=it.next();
                            
                        
                    
                    
                    %>
                    <tr>
                        <td>1</td>
                        
                        <td><%=fi.getCodficha()%></td>
                        <td><%=fi.getCantaprendices()%></td>
                        <td><%=fi.getCodpro()%></td>
                        <td><%=fi.getCodapr()%></td>
                         
                        <td>
                            <a class="btn btn-danger" href="../ControladorAprendiz?accion=editar&id=%><%=fi.getCodficha()%>">editar</a>
                            <a class="btn btn-warning" href="../ControladorAprendiz?accion=eliminar&id=%<%=fi.getCodficha()%>">eliminar</a>
                        </td>
                            
                            
                         
                    </tr>
                    <% }%> 
                </tbody>
            </table>         
        </div>
    </body>
</html>
