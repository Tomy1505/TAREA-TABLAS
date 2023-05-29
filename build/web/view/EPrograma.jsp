<%-- 
    Document   : EPrograma
    Created on : 25/05/2023, 6:27:45 p. m.
    Author     : APRENDIZ
--%>

<%@page import="Model.Programa"%>
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
        ProgramaDao pro =new ProgramaDao();  
        int id= Integer.parseInt((String)request.getAttribute(("id")));
        Programa pr = (Programa)pro.listar(id);
        
      %>
        <section class="form-register">
            <form action="ControladorAprendiz">          
                <h4 class="titulo">Actualizar programa</h4>
            Codigo Programa:<br>
            <input class="controls" type="number" name="doce" id="doce" value="<%=pr.getCodprogra()%>"><p>
            Nombre Programa:<br>
            <input class="controls" type="text" name="nome" id="nome" value="<%=pr.getNomprogra()%>"><p>
       
            <p><input class="botons" type="submit" name="accion" value="Actualizar">
            </form>
        </section>
    </body>
</html>
