<%-- 
    Document   : LPrograma
    Created on : 25/05/2023, 6:25:51 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Model.Programa"%>
<%@page import="java.util.List"%>
<%@page import="ModelDao.ProgramaDao"%>
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
            <h1>PROGRAMAS LISTADOS</h1>
            <table border="1" cellpadding="10" >
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>                    
                    </tr>
                </thead>
                <tbody>
                    
                    <%
                    ProgramaDao prdao = new ProgramaDao();
                    List<Programa>lista = prdao.listarpro();
                    Iterator<Programa>it=lista.iterator();
                    Programa pr = null;
                    while (it.hasNext()) {                            
                            pr=it.next();
                            
                        
                    
                    
                    %>
                    <tr>
                        <td><%=pr.getCodprogra()%></td>
                        <td><%=pr.getNomprogra()%></td>
                         
                        <td>
                            <a class="btn btn-danger" href="ControladorPrograma?accion=editar&id=<%=pr.getCodprogra()%>">editar</a>
                            <a class="btn btn-warning" href="ControladorPrograma?accion=eliminar&id=<%=pr.getCodprogra()%>">eliminar</a>
                        </td>
                            
                            
                         
                    </tr>
                    <% }%> 
                </tbody>
            </table>         
        </div>
    </body>
</html>
