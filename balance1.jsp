<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Balance..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body background="C:\Users\Gorla Revanth\Desktop\wallpapers\Wallpaper-v7-1366x768.jpg">
<div id="top_links">
<div id="header">
	<h1>Banking is a trust<span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>	
    <A href="index.html"><IMG SRC="images/home1.gif"></IMG></A>
</div>

<div id="navigation">
    <ul>
    
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <!--<li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>-->
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
            <li><a href="#">Mobile wallet</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>BALANCE FORM</h1><br>
    	    <table  align="center" bgcolor="white">
		<tr>
		
		</tr>
		<tr>
			<td><div><%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			}
			
			 %></div>
				
			</td>
		</tr>
	</table>
    	   </div>      
    </td>
    
    <td width="299" valign="top">
    	   
    </td>
            	
    
</tr></table>
    
<div id="footer_top">
  <div id="footer_navigation">
</div>
<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>
