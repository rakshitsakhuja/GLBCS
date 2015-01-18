<%-- 
    Document   : techadvisorassigning
    Created on : Jun 13, 2014, 6:36:18 PM
    Author     : Naveen
--%>

<!DOCTYPE HTML>
<%@page import="java.sql.*, java.util.*,java.io.*"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Panel</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<!--[if IE 7]>
		<link rel="stylesheet" href="css/ie7.css" type="text/css">
	<![endif]-->

</head>
<body>
	<div id="header">
		<div>
			<div>
				<div align="center"><span>International Conference on Cybernatics &amp; Security</span>
				    <span></span>
			      </div>
			</div>
	  <ul>
				<li class="selected">
					<a href="index.html">home</a>
				</li>
				<li>
					<a href="#">ICCS 2015</a>
				</li>
				<li>
					<a href="#">CALL FOR PAPERS</a>
				</li>
				<li>
					<a href="#">IMPORTANT DATES</a>
				</li>
				<li>
					<a href="iccs2015papersubmission.html">PAPER SUBMISSION</a>
				</li>
				<li>
					<a href="iccs2015venue.html">CONFERENCE VENUE</a>
				</li>
				</ul>

		</div>
	</div>
	<div id="body">
		<div id="content">
			<div id="sidebar">
				<h3>Services/Options</h3>
				<ul>
					<li>
						<a href="#">Assign tasks to Technical Advisories.</a>
					</li>
					<li class="selected">
						<a href="#">Update Paper Status</a>
					</li>
					<li>
						<a href="#">Check visitors queries</a>
					</li>
					<li>
						<a href="services.html">Assign Responsibities and Send Mails</a>
					</li>
				</ul>
			</div>
			<div id="section">
				<h2>Welcome, Admin</h2>
				
				<p>
                                    Check Papers for reviews<br><br>                                
                                <form method="post" action="iccs2015assignpaperadvisorsall.jsp">  
                                    <select name="menu111" id="menu11">
                                        <option>Select Advisor and Assign tasks</option>
                                                  
<%      
try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
        int i=2;
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select advisorname from advisordata");
while(rs.next()){
    i=i*2;
    %>
                               
    
    
    <option><%=rs.getString("advisorname")%></option>
    
     
                                    
<%
}
%>
                                    </select>
<%
rs.close();
st.close();
con.close();
}
catch(Exception e){}
               
     %><input type="hidden" name="hid123" value="Testing"> 
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="btn17" value="Assign Papers">
                                
                                </form><p></p><br><br><br>
                                <p>
                                    One of the most important advantages of using JSP is that you can use all the methods available in core Java. This tutorial would take you through Java provided Date class which is available in java.util package, this class encapsulates the current date and time.

The Date class supports two constructors. The first constructor initializes the object with the current date and time.
                                </p>
		</div>
	</div>
	<div id="footer">
		<div>
			<p>
				Copyright &copy; <a href="index.html">ICCS 2015</a>
			</p>
			<ul>
				<li>
					<a href="#">ICCS 2015</a>
				</li>
				
				<li>
					<a href="#">PAPER SUBMISSION</a>
				</li>
				<li>
					<a href="#">VENUE</a>
				</li>
							</ul>
			<div>
				<span>stay connected:</span>
				<a href="http://facebook.com/ICCS2015/" id="facebook">facebook</a>
				<a href="http://twitter.com/ICCS2015/" id="twitter">twitter</a>
				<a href="http://googleplus.com/ICCS2015/" id="googleplus">googleplus</a>
			</div>
		</div>
	</div>
</body>
</html>