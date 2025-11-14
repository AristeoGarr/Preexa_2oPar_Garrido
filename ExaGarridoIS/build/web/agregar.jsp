<%-- 
    Document   : agregar
    Created on : 14/11/2025, 08:50:07 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h2>Agregar Producto</h2>

<form action="insertar.jsp" method="post">
    Nombre:<br>
    <input type="text" name="nombProd" required><br><br>

    Precio:<br>
    <input type="number" step="0.01" name="precioProd" required><br><br>

    Cantidad:<br>
    <input type="number" name="cantProd" required><br><br>

    <button type="submit">Guardar</button>
</form>
