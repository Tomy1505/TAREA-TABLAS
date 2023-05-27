<%-- 
    Document   : FFicha
    Created on : 25/05/2023, 6:25:18 p. m.
    Author     : APRENDIZ
--%>

<%@page import="Model.Aprendiz"%>
<%@page import="ModelDao.AprendizDao"%>
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
            .form-register{
                background-color: lightblue;
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
            .custom-select{
                height: 50px;
                width: 500px;
            }
            .botons{
                height: 50px;
                width: 500px;
                align-content: center;
            }
        </style>
    </head>
    <body>
        <section class="form-register">
        <form action="../ControladorFicha">
            <h1>Registro ficha</h1><br>
            Codigo Ficha: <br>
            <input class="controls" type="number" name="codfi" id="codfi"><br>
            Cantidad de aprendices: <br>
            <input class="controls" type="number" name="cantapr" id="cantapr"><br>
            Nombre del Programa: <br>
            <div class="form-group">
                <label Nombre Programa:></label>
                <select name="listapro" class="custom-select">
                    <option value="0"></option>
                    <%ProgramaDao pro = new ProgramaDao();
                    List<Programa> listar = pro.listarpro();%>
                    <%for(Programa li:listar){%>
                    <option value="<%=li.getCodprogra()%>"><%=li.getNomprogra()%></option>
                    <%}%>
                </select>
            </div>
            Nombre del Aprendiz: <br>
            <div class="form-group">
                <label Nombre Aprendiz:></label>
                <select name="listaape" class="custom-select">
                    <option value="0"></option>
                    <%AprendizDao apre = new AprendizDao();
                    List<Aprendiz> listara = apre.listadoA();%>
                    <%for(Aprendiz lia:listara){%>
                    <option value="<%=lia.getDoca()%>"><%=lia.getNoma()%></option>
                    <%}%>
                </select>
            </div>
            <p><input class="botons" type="submit" name="accion" value="Registrar">
            
        </form>
        </section>
    </body>
</html>
