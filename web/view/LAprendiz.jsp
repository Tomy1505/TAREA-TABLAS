<%-- 
    Document   : LAprendiz
    Created on : 25/05/2023, 6:25:32 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Model.Aprendiz"%>
<%@page import="java.util.List"%>
<%@page import="ModelDao.AprendizDao"%>
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
                background-color: lightcyan;
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
        <div class="contenedor">
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
                    AprendizDao dao = new AprendizDao();
                    List<Aprendiz>listar=dao.listadoA();
                    Iterator<Aprendiz>it=listar.iterator();
                    Aprendiz apr= null;
                    while(it.hasNext()){
                    apr=it.next();
                    
                    
                    %>
                    <tr>
                        <td><%=apr.getId()%></td>
                        <td><%=apr.getDoca()%></td>
                        <td><%=apr.getNoma()%></td>
                        <td><%=apr.getApea()%></td>
                        <td><%=apr.getEmaa()%></td>
                        <td><%=apr.getTela()%></td>
                         
                        <td>
                            <a class="btn btn-danger" href="ControladorAprendiz?accion=editar&id=<%=apr.getId()%>">editar</a>
                            <a class="btn btn-warning" href="ControladorAprendiz?accion=eliminar&id=<%=apr.getId()%>">eliminar</a>
                        </td>
     
                         
                    </tr>
                    <% }%> 
                </tbody>
            </table>         
        </div>
    </body>
</html>
