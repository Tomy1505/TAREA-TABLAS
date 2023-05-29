<%-- 
    Document   : index
    Created on : 25/05/2023, 6:24:41 p. m.
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
            }
            .contendor{
                background-color: lightgray;
                height: 98vh;
                margin: 0%;
                
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }
            .boton1{
                background-color: lightcyan;
                padding: 20px;
                margin-bottom: 20px;
            }
            .boton2{
                background-color: lightblue;
                padding: 20px;
                margin-bottom: 20px;
            }
            .boton3{
                background-color: lightskyblue;
                padding: 20px;
                margin-bottom: 20px;
            }
            .mapa{
                margin: 20px;
                height: 100vh;
            }
        </style>
    </head>
    <body>
        <div class="contendor">
        <h1>¿A que formulario te diriges?</h1>
        <button class="boton1" onclick="location.href='view/FAprendiz.jsp'">Registro de Aprendiz</button><br>
        <button class="boton2" onclick="location.href='view/FFicha.jsp'">Registro de Ficha</button><br>
        <button class="boton3" onclick="location.href='view/FPrograma.jsp'">Registro de Programa</button><br>
        <iframe class="mapa" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.873727011175!2d-74.09562107304693!3d4.616605500000018!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f996f759820ad%3A0x8064dc77d651db18!2sSena%20Complejo%20de%20Paloquemao!5e0!3m2!1ses!2sco!4v1685125584288!5m2!1ses!2sco" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        <h4 class="titulo">@SENA 2023</h4>
        </div>
    </body>
</html>
