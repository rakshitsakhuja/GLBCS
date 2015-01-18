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
        <script>
	function valued1()
	{
            var x = document.getElementById("india").value;
        
document.getElementById("name1").value = x;
	}
        </script>

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
                                  <table border="1">
                                    <tr>
                                        <th>Paper Id </th>
                                        <th>Author Name </th>
                                        <th>Co-Author name </th>
                                        <th>Paper Title </th>
                                        <th>Paper Link </th>
                                        <th>Edit</th>
                                    </tr>
                                                  
<%      
try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
        int i=0;
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select paperid, authorname, coauthor, papertitle,status from iccs2015statuspaper");
while(rs.next()){
    i=i+20;
    %>
                               
    <tr>
    <td><%=rs.getString("paperid")%></td>
    <td><%=rs.getString("authorname")%></td>
    <td><%=rs.getString("coauthor")%></td>
    <td><%=rs.getString("papertitle")%></td>
    <td><%=rs.getString("status")%></td>
    <td><input type="checkbox" value="India" name="india" onClick="valued1()"></td>
    </tr>
<%
}%>
                                    </table>
                                    <%

rs.close();
st.close();
con.close();
}
catch(Exception e){}
               
        %>
                                <form method="post" action="iccs2015editsta.jsp">
                                    <input type="hidden" value="" name="name1">
                                    <input type="submit" name="btn15" value="Edit Status (Pending)"></form>
                                <input type="submit" name="btn15" value="Edit Status (Accepted)">
                                <form><input type="submit" name="btn16" value="Delete">
                                </form>
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