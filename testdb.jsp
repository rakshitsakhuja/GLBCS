<%@ page import="java.sql.*" %>
<HTML>
<HEAD>
<TITLE>Simple JSP/Oracle Query Example</TITLE>
</HEAD>
<BODY>
<%
	Connection connection = null;
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:8080:xe", "system", "naveen");
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery("SELECT COMPANY_NAME FROM TEST1");

		while (resultSet.next())
		{
			int x = resultSet.getInt("COMPANY_NAME");

		}
	}

	

	finally
	{
		if(connection != null)
		{
			try
			{
				connection.close();
			}
			catch (Exception ignored)
			{
				// ignore
			}
				
		}
	}
	
	
%>
</BODY>
</HTML>