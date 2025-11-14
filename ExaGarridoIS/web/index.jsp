<%-- 
    Document   : index
    Created on : 14/11/2025, 08:40:28 AM
    Author     : dell
--%>

<%@ page import="java.sql.*" %>
<%@ include file="conexion.jsp" %>

<h2>Lista de productos</h2>


<a href="agregar.jsp">Agregar nuevo producto</a>
<br><br>

<table border="1" cellpadding="10">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Precio</th>
        <th>Cantidad</th>
        <th>Acciones</th>
    </tr>

<%
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM tproductos");
    while (rs.next()) {
%>
    <tr>
        <td><%= rs.getInt("idProd") %></td>
        <td><%= rs.getString("nombProd") %></td>
        <td>$<%= rs.getBigDecimal("precioProd") %></td>
        <td><%= rs.getInt("cantProd") %></td>

        <td>
            <a href="editar.jsp?id=<%= rs.getInt("idProd") %>">Editar</a> |
            <a href="eliminar.jsp?id=<%= rs.getInt("idProd") %>" 
               onclick="return confirm('¿Seguro que deseas eliminar?')">
               Eliminar
            </a>
        </td>
    </tr>
<%
    }
    rs.close();
    st.close();
    con.close();
%>
</table>
