<%-- 
    Document   : EAprendiz
    Created on : 25/05/2023, 6:27:19 p. m.
    Author     : APRENDIZ
--%>

<%@page import="Model.Aprendiz"%>
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
        AprendizDao ape =new AprendizDao();  
        int id= Integer.parseInt((String)request.getAttribute(("id")));
        Aprendiz ap = (Aprendiz)ape.list(id);
        
      %>
        <section class="form-register">
            <form action="ControladorAprendiz">          
                <h4 class="titulo">Actualizar Aprendiz</h4>
            Documento:<br>
            <input class="controls" type="number" name="doce" id="doce" value="<%=ap.getDoca()%>"><p>
            Nombre:<br>
            <input class="controls" type="text" name="nome" id="nome" value="<%=ap.getNoma()%>"><p>
            Apellido:<br>
            <input class="controls" type="text" name="apee" id="apee" value="<%=ap.getApea()%>"><p>
            Email:<br>
            <input class="controls" type="email" name="emae" id="emae" value="<%=ap.getEmaa()%>"><p>
            Telefono:<br>
            <input class="controls" type="number" name="nume" id="nume" value="<%=ap.getTela()%>">
       
            <p><input class="botons" type="submit" name="accion" value="Actualizar">
            </form>
        </section>
    </body>
</html>
