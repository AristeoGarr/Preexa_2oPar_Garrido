<%-- 
    Document   : eliminar
    Created on : 14/11/2025, 08:54:15 AM
    Author     : dell
--%>

<%@ page import="java.sql.*" %>
<%@ include file="conexion.jsp" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    PreparedStatement ps = con.prepareStatement("DELETE FROM tproductos WHERE idProd=?");
    ps.setInt(1, id);
    ps.executeUpdate();

    ps.close();
    con.close();

    response.sendRedirect("index.jsp");
%>
