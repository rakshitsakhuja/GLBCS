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
ResultSet rs=st.executeQuery("select accounttype from admindatalogin where adminemail='"+userid+"' and adminpassword='"+password+"'");
        if(rs.next())
        {
            response.sendRedirect("adminpanel1.jsp");
        }
                      
       
       else
                    {
            response.sendRedirect("iccs2015loginpanelerr.jsp");
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