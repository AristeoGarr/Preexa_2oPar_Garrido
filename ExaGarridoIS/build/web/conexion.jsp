<%-- 
    Document   : conexion
    Created on : 14/11/2025, 08:48:55 AM
    Author     : dell
--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%
    String url = "jdbc:mysql://localhost:3306/bdgarridois";
    String user = "root";
    String pass = "";

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(url, user, pass);
%>
</table>
