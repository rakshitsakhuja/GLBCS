<%@page import="java.sql.*"%>
<html>
    <head>
    </head>
    <body>
    <table border=1>
<tr><th>Name</th><th>Address</th></tr>

<%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select name from student");
while(rs.next()){
    %>
<tr><td><%=rs.getString("name")%></td>
   </tr>
<%
}
rs.close();
st.close();
con.close();
}
catch(Exception e){}
%>
</table>
    </body>
</html>