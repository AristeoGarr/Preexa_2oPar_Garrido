<%-- 
    Document   : actualizar
    Created on : 14/11/2025, 08:53:26 AM
    Author     : dell
--%>

<%@ page import="java.sql.*" %>
<%@ include file="conexion.jsp" %>

<%
    int id = Integer.parseInt(request.getParameter("idProd"));
    String nombre = request.getParameter("nombProd");
    String precio = request.getParameter("precioProd");
    String cant = request.getParameter("cantProd");

    String sql = "UPDATE tproductos SET nombProd=?, precioProd=?, cantProd=? WHERE idProd=?";

    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, nombre);
    ps.setBigDecimal(2, new java.math.BigDecimal(precio));
    ps.setInt(3, Integer.parseInt(cant));
    ps.setInt(4, id);

    ps.executeUpdate();

    ps.close();
    con.close();

    response.sendRedirect("index.jsp");
%>
