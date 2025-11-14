<%-- 
    Document   : insertar
    Created on : 14/11/2025, 08:50:59 AM
    Author     : dell
--%>

<%@ page import="java.sql.*" %>
<%@ include file="conexion.jsp" %>

<%
    String nombre = request.getParameter("nombProd");
    String precio = request.getParameter("precioProd");
    String cant = request.getParameter("cantProd");

    String sql = "INSERT INTO tproductos (nombProd, precioProd, cantProd) VALUES (?, ?, ?)";

    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, nombre);
    ps.setBigDecimal(2, new java.math.BigDecimal(precio));
    ps.setInt(3, Integer.parseInt(cant));

    ps.executeUpdate();

    ps.close();
    con.close();

    response.sendRedirect("index.jsp");
%>
