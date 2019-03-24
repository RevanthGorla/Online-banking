<%-- 
    Document   : CreateACC
    Created on : 17 Mar, 2019, 12:10:00 PM
    Author     : Gorla Revanth
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="java.time.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Created</title>
    </head>
    <body background="Wallpaper-v7-1366x768.jpg">
     <%
    String s1=null;
    String s2=null;
    String s3=null;
    String s4=null;    
    String s5=null;
    String s6=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
    Statement st = con.createStatement();
    s1 = request.getParameter("uname");
    s2 = request.getParameter("psw");
    s3 = request.getParameter("Acard");
    s4 = request.getParameter("gender");
    s5 = request.getParameter("address");
    s6 = request.getParameter("phone");            
    st.executeUpdate("insert into Accounts values ('" + s4 + "','" + s1 + "','" + s2 + "','" + s3 + "','" + s5 + "','" + s6 + "')");
%>
<br><br><br><br>
<font color="white">
        <h1 align="center">Thanks for Trusting us.</h1>
        <h2>Aadhar no is ur account no.</h2>
        </font>
    </body>
</html>
