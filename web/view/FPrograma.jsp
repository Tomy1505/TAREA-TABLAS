<%-- 
    Document   : FPrograma
    Created on : 25/05/2023, 6:25:06 p. m.
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                font-family: monospace;
                font-size: 50px;
            }
            .form-group{
                background-color: lightcyan;
                
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }
            .form-register{
                background-color: lightskyblue;
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
        </style>
    </head>
    <body>
        <section class="form-register">
            <form action="../ControladorPrograma">
            <h4>Registro Programa</h4>
            <input class="controls" type="number" name="codpr" id="codpr" placeholder="ingresa el codigo del programa"><br>
            <input class="controls" type="text" name="nompr" id="nompr" placeholder="ingresa el nombre del programa">
            
       
            <p><input class="botons" type="submit" name="accion" value="Registrar programa">
            </form>
        </section>
    </body>
</html>
