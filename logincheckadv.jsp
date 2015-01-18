<%-- 
    Document   : logincheckadv
    Created on : Jun 15, 2014, 7:18:46 AM
    Author     : Naveen
--%>

<%@page import="java.sql.*, java.util.*,java.io.*"%>
<html>
    <head>
    </head>
    <body>
        
        
    <%
    String logintype= request.getParameter("menu1");
            String userid=request.getParameter("userid1");
            String password=request.getParameter("password1");
    
    %>
    <%  
        if((userid!=null)) 
	{
	 session.setAttribute("username",userid);
      }
    %>
<%
try {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:MyDB");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select accounttype from iccs2015logindata where userid='"+userid+"' AND password='"+password+"'");
        if(rs.next())
        {
                        
            response.sendRedirect("advisorstasks1.jsp");
            }
               else
                    {
            response.sendRedirect("iccs2015loginpanel4advmangerr.jsp");
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