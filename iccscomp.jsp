<%-- 
    Document   : iccscomp
    Created on : Jun 6, 2014, 8:45:50 PM
    Author     : Naveen
--%>
<%@page import="java.sql.*, java.util.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ICCS2015 Complain</title>
    </head>
    <body>
        
<%
try {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();

    String fname   = request.getParameter("fname");
    String eadd   = request.getParameter("email");
    String query   = request.getParameter("query1");
    String message   = request.getParameter("message");
String ps = "INSERT INTO iccs2015compregister(NAME,EMAIL,QUERYTYPE,MESSAGE) VALUES('Naveen Chauhan','test@test.com','ROute', 'Hello')";                
if(st.executeUpdate(ps)>0){
   response.sendRedirect("iccs2015venue.html");
  }
else{
   response.sendRedirect("iccs2015venue1.jsp");
  }        
st.close();
con.close();
    }
catch(Exception e){}
%>
  
  </body>
</html>
