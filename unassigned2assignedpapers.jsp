<%-- 
    Document   : unassigned2assignedpapers
    Created on : Jun 14, 2014, 9:35:36 PM
    Author     : Naveen
--%>

<%@page import="java.sql.*, java.util.*,java.io.*"%>
<html>
    <head>
    </head>
    <body>
    <%
            String unapaper= request.getParameter("menu112");
            String advisorname=request.getParameter("hid2345");
            
    
    %>
    <p>
        Selected paper: <%= request.getParameter("menu112")%>
    </p>
    <p>
        AdvisorName: <%=request.getParameter("hid2345")%>
    </p>
<%
try {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("UPDATE iccs2015statuspaper SET Assigned='"+advisorname+"', assignedvalue='assigned', advisorreport='waiting' where papertitle='"+unapaper+"'");

rs.close();

st.close();

con.close();
}
catch(Exception e){}
%>
<%
try {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select paperid from iccs2015statuspaper where papertitle='"+unapaper+"' AND assignedvalue='assigned'");        
if(rs.next()){
               
    response.sendRedirect("index.html");
            }
else
       {
                response.sendRedirect("adminpanel1.jsp");
       }

rs.close();

st.close();

con.close();
}
catch(Exception e){}
%>



</body>
</html>