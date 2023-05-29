<%-- 
    Document   : FAprendiz
    Created on : 25/05/2023, 6:24:59 p. m.
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
        </style>
    </head>
    <body>
        <section class="form-register">
            <form action="../ControladorAprendiz">          
            <h4>Formulario Registro</h4>
            <input class="controls" type="number" name="doc" id="doc" placeholder="ingresa tu documento"><br>
            <input class="controls" type="text" name="nom" id="nom" placeholder="ingresa tu nombre"><br>
            <input class="controls" type="text" name="ape" id="ape" placeholder="ingresa tu apellido"><br> 
            <input class="controls" type="email" name="ema" id="ema" placeholder="ingresa tu correo"><br>
            <input class="controls" type="number" name="num" id="num" placeholder="ingresa tu celular">
       
            <p><input class="botons" type="submit" name="accion" value="Registrar">
            </form>
        </section>
    </body>
</html>
