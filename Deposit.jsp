<%-- 
    Document   : Deposit
    Created on : 19 Mar, 2019, 4:04:54 PM
    Author     : Gorla Revanth
--%>
<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*;" %>
<%@page import="oracle.sql.*;" %>
<%@page import="oracle.jdbc.driver.OracleDriver;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String s1=null;
    String s2=null;
    ResultSet rs=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
    Statement st = con.createStatement();
    s1 = request.getParameter("uname");
    s2 = request.getParameter("pswd");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
