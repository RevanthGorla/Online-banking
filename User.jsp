<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="java.time.*" %>
<%@page import="java.lang.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String s1=null;
    String s2=null;
    String s3=null;
    ResultSet rs=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
    Statement st = con.createStatement();
    s1 = request.getParameter("Uname");
    s2 = request.getParameter("psw");
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account</title>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body background="Wallpaper-v7-1366x768.jpg">
        <font color="white">
         <%
            try
            {
                rs = st.executeQuery("select * from Accounts where aadhar_no='"+s1+"'");           
                rs.next();                               
                if (rs.getString("password").equals(s2))
                {
        %>
<div id="top_links">
  <div id="header">
	<h1>Banking is a trust<span class="style1"></span></h1>
        <h2>Date and Time:
            <%
             java.util.Date cd=new java.util.Date();
             out.println(cd.toString());
            %>
        </h2>
   </div>
<div id="navigation">
    <ul>
    <li><a href="index.html">LOGOUT</a></li>
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="closeac1.jsp">CLOSE A/C</a></li>
    <li><a href="about.jsp">ABOUT US</a></li>
    </ul>
</div>
<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
        	<li><a href="#">Mutual funds</a></li>
            <li><a href="#">Chits</a></li>
            <li><a href="#">Mobile Wallet</a></li>
            </ul>
		</div>
	</td>
    
    <td width="1200" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>ACCOUNT DETAILS</h1><br>
            <span>
                Hi There !
                <%
                    
                st.executeQuery("select * from Accounts where GENDER='male'");
                %>
            </span>
            <table  align="center" bgcolor="white">
		<tr>
               
		</tr>
		<tr>

        
     <%
                }
                else
                {
        %>
                    <h3 align="center">Invalid username or password</h3>                    
        <%
                }                
            }
            catch (Exception e)
            {
        %>
            <h3 align="center">Invalid username or password</h3>
        <%
            }
        %>                        
        <%
        con.close();
        st.close();
        %>
         </table>
         </font>
    </body>
</html>
