<%-- 
    Document   : editar
    Created on : 14/11/2025, 08:52:14 AM
    Author     : dell
--%>

<%@ page import="java.sql.*" %>
<%@ include file="conexion.jsp" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    PreparedStatement ps = con.prepareStatement("SELECT * FROM tproductos WHERE idProd=?");
    ps.setInt(1, id);
    ResultSet rs = ps.executeQuery();
    rs.next();
%>

<h2>Editar Producto</h2>

<form action="actualizar.jsp" method="post">
    <input type="hidden" name="idProd" value="<%= rs.getInt("idProd") %>">

    Nombre:<br>
    <input type="text" name="nombProd" value="<%= rs.getString("nombProd") %>" required><br><br>

    Precio:<br>
    <input type="number" step="0.01" name="precioProd" 
           value="<%= rs.getBigDecimal("precioProd") %>" required><br><br>

    Cantidad:<br>
    <input type="number" name="cantProd" 
           value="<%= rs.getInt("cantProd") %>" required><br><br>

    <button type="submit">Actualizar</button>
</form>

<%
    rs.close();
    ps.close();
    con.close();
%>
