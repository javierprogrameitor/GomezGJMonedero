<%-- 
    Document   : Monedero
    Created on : 7 oct. 2023, 12:34:06
    Author     : javier
--%>

<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monedero</title>
        <link rel="stylesheet" type="text/css" href="../CSS/style.css">
    </head>
    <body>
        <h1>El resultado de la operacion es: </h1>
        <%
            String mensaje = "";

            String param1 = (request.getParameter("importe"));
            String param2 = (request.getParameter("pago"));

            BigDecimal b500, b200, b100, b50, b20, b10, b5;
            BigDecimal m200, m100, m50, m20, m10, m5, m2, m1;

            BigDecimal resultado;

            double numero1 = Double.parseDouble(param1);
            double numero2 = Double.parseDouble(param2);

            if (numero1 > numero2) {
        %>
        <p>"No tienes suficiente dinero para comprar el producto"</p>
        <%
            }

            double cambio = numero2 - numero1;

            if (cambio >= 500) {
                //obtienes la cantidad de billetes/monedas de ese tipo
                resultado = new BigDecimal(cambio / 500);

                //truncas el resultado porque no puedes dar partes de billete
                b500 = resultado.setScale(0, RoundingMode.DOWN);

                /* calculas lo que queda de cambio tras darle los billetes
correspondientes. intValue() te devuelve el valor del número
                 */
                cambio = cambio - 500 * (b500.intValue());
                mensaje += b500 + " billetes de 500, ";
                /*
            Imprimes la imagen del billete o moneda y con todos igual
                 */
        %>
        <img src="../IMG/Bille500€.png" alt="500€">              
        <%
            }

            if (cambio >= 200) {
                resultado = new BigDecimal(cambio / 200);
                b200 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 200 * (b200.intValue());
                mensaje += b200 + " billetes de 200, ";
        %>
        <img src="../IMG/Bille200€.png" alt="200€">              
        <%
            }

            if (cambio >= 100) {
                resultado = new BigDecimal(cambio / 100);
                b100 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 100 * (b100.intValue());
                mensaje += b100 + " billetes de 100, ";
        %>
        <img src="../IMG/Bille100€.png" alt="100€">              
        <%
            }

            if (cambio >= 50) {
                resultado = new BigDecimal(cambio / 50);
                b50 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 50 * (b50.intValue());
                mensaje += b50 + " billetes de 50, ";
        %>
        <img src="../IMG/Bille50€.png" alt="50€">              
        <%
            }

            if (cambio >= 20) {
                resultado = new BigDecimal(cambio / 20);
                b20 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 20 * (b20.intValue());
                mensaje += b20 + " billetes de 20, ";
        %>
        <img src="../IMG/Bille20€.png" alt="20€">              
        <%
            }

            if (cambio >= 10) {
                resultado = new BigDecimal(cambio / 10);
                b10 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 10 * (b10.intValue());
                mensaje += b10 + " billetes de 10, ";
        %>
        <img src="../IMG/Bille10€.png" alt="10€">              
        <%
            }

            if (cambio >= 5) {
                resultado = new BigDecimal(cambio / 5);
                b5 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 5 * (b5.intValue());
                mensaje += b5 + " billetes de 5, ";
        %>
        <img src="../IMG/Bille5€.png" alt="5€">              
        <%
            }

            if (cambio >= 2) {
                resultado = new BigDecimal(cambio / 2);
                m200 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 2 * (m200.intValue());
                mensaje += m200 + " monedas de 2E, ";
        %>
        <img src="../IMG/Mone2€.png" alt="2€">              
        <%
            }

            if (cambio >= 1) {
                resultado = new BigDecimal(cambio);
                m100 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - (m100.intValue());
                mensaje += m100 + " monedas de 1E, ";
        %>
        <img src="../IMG/Mone1€.png" alt="1€">              
        <%
            }

            if (cambio >= 0.5) {
                resultado = new BigDecimal(cambio / 0.5);
                m50 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 0.5 * (m50.intValue());
                mensaje += m50 + " monedas de 50cent, ";
        %>
        <img src="../IMG/Mone50cent.png" alt="50cent">              
        <%
            }
            if (cambio >= 0.2) {
                resultado = new BigDecimal(cambio / 0.2);
                m20 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 0.2 * (m20.intValue());
                mensaje += m20 + " monedas de 20cent, ";
        %>
        <img src="../IMG/Mone20cent.png" alt="20cent">              
        <%
            }
            if (cambio >= 0.1) {
                resultado = new BigDecimal(cambio / 0.1);
                m10 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 0.1 * (m10.intValue());
                mensaje += m10 + " monedas de 10cent, ";
        %>
        <img src="../IMG/Mone10cent.png" alt="10cent">              
        <%
            }

            if (cambio >= 0.05) {
                resultado = new BigDecimal(cambio / 0.05);
                m5 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 0.05 * (m5.intValue());
                mensaje += m5 + " monedas de 5cent, ";
        %>
        <img src="../IMG/Mone5cent.png" alt="5cent">              
        <%
            }
            if (cambio >= 0.02) {
                resultado = new BigDecimal(cambio / 0.02);
                m2 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 0.02 * (m2.intValue());
                mensaje += m2 + " monedas de 2cent, ";
        %>
        <img src="../IMG/Mone2cent.png" alt="2cent">              
        <%
            }

            if (cambio >= 0.09) {
                resultado = new BigDecimal(cambio / 0.01);
                m1 = resultado.setScale(0, RoundingMode.DOWN);
                cambio = cambio - 0.01 * (m1.intValue());
                mensaje += m1 + " monedas de 1cent.";
        %>
        <img src="../IMG/Mone1cent.png" alt="1cent">              
        <%
            }
        %>
        <p><%=mensaje%></p>
        <div id="container">
        <form method="post" action="../HTML/monedero.html">
            <input id="miBoton" type="submit" value="Volver al Monedero">
        </form>
        </div>
        <p><a href="../index.html">Salir</a></p>

    </body>
</html>
