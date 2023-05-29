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
        <div class="contenedor">
            <h1>FICHAS LISTADAS</h1>
            <table border="1" cellpadding="10" >
                <thead>
                    <tr>
                        <th>Codigo Ficha</th>
                        <th>Cantidad de<br>
                            Aprendices</th>
                        <th>Codigo del<br>
                            Programa</th>
                        <th>Documento del<br>
                            Aprendiz</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <%
                    FichaDao fdao = new FichaDao();
                    List<Ficha>lista = fdao.listarficha();
                    Iterator<Ficha>it=lista.iterator();
                    Ficha fic = null;
                    while (it.hasNext()) {                            
                            fic=it.next();
                            
                        
                    
                    
                    %>
                    <tr>
                        <td><%=fic.getCodficha()%></td>
                        <td><%=fic.getCantaprendices()%></td>
                        <td><%=fic.getCodpro()%></td>
                        <td><%=fic.getCodapr()%></td>
                         
                        <td>
                            <a class="btn btn-danger" href="ControladorFicha?accion=editar&id=<%=fic.getCodficha()%>">editar</a>
                            <a class="btn btn-warning" href="ControladorFicha?accion=eliminar&id=<%=fic.getCodficha()%>">eliminar</a>
                        </td>
                            
                            
                         
                    </tr>
                    <% }%> 
                </tbody>
            </table>         
        </div>
    </body>
</html>
