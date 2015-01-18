<%-- 
    Document   : iccs2015editsta
    Created on : Jun 11, 2014, 6:35:44 AM
    Author     : Naveen
--%>

<%@page import="java.sql.*, java.util.*,java.io.*"%>
<html>
    <head>
    </head>
    <body>
        Testing process....
        <br>
    <%
            request.getParameter("advisorlist1");
                
    %>
    <select id="" name=""><option>Unassigned paper titles</option>
<%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();
String ps = "select papertitle from iccs2015statuspaper";                
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

    </body>
</html>