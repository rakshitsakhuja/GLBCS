<%-- 
    Document   : iccs2015assignpaperadvisorsall
    Created on : Jun 14, 2014, 4:38:28 PM
    Author     : Naveen
--%>

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
                                <%
                                String Advisor=request.getParameter("menu111");
                                %>
				<p>
                                    Assign Papers for reviews<br><br>                                
                                  
                                    <p><b>
        Advisor Name:<%=request.getParameter("menu111")%><br>
        </P>
        <p>
            Total Papers Assigned:
            <%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();
String ps = "select count(*) from iccs2015statuspaper where Assigned='"+Advisor+"'";                
ResultSet rs=st.executeQuery(ps);
if(rs.next()){
    int rowCount = rs.getInt(1);
    out.println(rowCount);
    }

rs.close();
st.close();
con.close();
}
catch(Exception e){}
%>      
        
        
        </p>
        <p>
            Total Papers Reviewed:
        <%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();
String ps = "select count(*) from iccs2015statuspaper where Assigned='"+Advisor+"' AND advisorreport='approved'";                
ResultSet rs=st.executeQuery(ps);
if(rs.next()){
    int rowCount1 = rs.getInt(1);
    out.println(rowCount1);
    }

rs.close();
st.close();
con.close();
}
catch(Exception e){}
%>
        </p>
        <p>
            Total Papers Left for review:
            <%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();
String ps = "select count(*) from iccs2015statuspaper where Assigned='"+Advisor+"' AND advisorreport='waiting'";                
ResultSet rs=st.executeQuery(ps);
if(rs.next()){
    int rowCount2 = rs.getInt(1);
    out.println(rowCount2);
    }

rs.close();
st.close();
con.close();
}
catch(Exception e){}
%>
        </p>
        <br><br><br>
    <form method="post" action="unassigned2assignedpapers.jsp">
    
    
    <select id="menu112" name="menu112">
        <option>Unassigned paper titles</option>
<%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();
String ps = "select papertitle from iccs2015statuspaper where assignedvalue='unassigned'";                
ResultSet rs=st.executeQuery(ps);
while(rs.next()){
    
    %>
                               
    
    
    <option><%=rs.getString("papertitle")%></option>
    
     
                                    
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
%> 

<input type="hidden" name="hid2345" value="<%=request.getParameter("menu111")%>">
<input type="submit" name="btn17" value="Assign Papers">
                                
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