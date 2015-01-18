<!DOCTYPE HTML>
<%@page import="java.sql.*, java.util.*,java.io.*"%>
<!-- Website Template by freewebsitetemplates.com -->
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
                            <%String advisorn=session.getAttribute("username").toString();;%>
				<h2>Welcome, Admin: &nbsp;&nbsp;&nbsp;<%=session.getAttribute("username")%></h2>
                                    
				
				<p>
                                    Check Papers for reviews<br><br>
                                
 <%
try {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select paperid from iccs2015statuspaper where (select advisorname from advisordata where advisorid='"+advisorn+"')=");
        while(rs.next())
        {
           String Advisorname1=rs.getString("paperid");
            out.println(Advisorname1);
                        }
                  

rs.close();
st.close();
con.close();
}
catch(Exception e){}
%>




				</p>
			</div>
                                <hr><p></p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Assign Tasks to Technical Advisors<br><br>
            
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