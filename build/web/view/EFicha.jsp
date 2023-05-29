<%-- 
    Document   : EFicha
    Created on : 25/05/2023, 6:27:32 p. m.
    Author     : APRENDIZ
--%>

<%@page import="Model.Ficha"%>
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
            .form-register{
                background-color: lightcyan;
                height: 98vh;
                margin: 0%;
                
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }
            .controls{
                height: 50px;
                width: 500px;
            }
            .botons{
                height: 50px;
                width: 500px;
                align-content: center;
            }
            .titulo{
                font-size: 50px;
            }
        </style>
    </head>
    <body>
        <%
        FichaDao fic =new FichaDao();  
        int id= Integer.parseInt((String)request.getAttribute(("id")));
        Ficha fi = (Ficha)fic.list(id);
        
      %>
        <section class="form-register">
            <form action="ControladorAprendiz">          
                <h4 class="titulo">Actualizar Ficha</h4>
            Codigo de la ficha:<br>
            <input class="controls" type="number" name="codf" id="codf" value="<%=fi.getCodapr()%>"><p>
            Cantidad de aprendices:<br>
            <input class="controls" type="text" name="canta" id="canta" value="<%=fi.getCantaprendices()%>"><p>
            Codigo del programa:<br>
            <input class="controls" type="text" name="codp" id="codp" value="<%=fi.getCodpro()%>"><p>
            Codigo del aprendiz:<br>
            <input class="controls" type="email" name="coda" id="coda" value="<%=fi.getCodapr()%>"><p>
       
            <p><input class="botons" type="submit" name="accion" value="Actualizar">
            </form>
        </section>
    </body>
</html>
