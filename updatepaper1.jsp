<%-- 
    Document   : updatepaper1
    Created on : Jun 12, 2014, 8:14:06 PM
    Author     : Naveen
--%>

<%@page import="java.sql.*, java.util.*,java.io.*"%>
<html>
    <head>
    </head>
    <body>
        <%
            String PaperTitle= request.getParameter("pt1");
            String author1=request.getParameter("an1");
            String author2=request.getParameter("cn1");
            String author3=request.getParameter("cn2");
            String countryname=request.getParameter("country1");
            String state=request.getParameter("st1");
            String connum=request.getParameter("con1");
            String emailid=request.getParameter("ea1");
            String checkbox1=request.getParameter("ds1");
            String question1=request.getParameter("sq2");
            String response1=request.getParameter("sqt1");
            String question2=request.getParameter("sq3");
            String response2=request.getParameter("sqt2");
    %>
<br>

    Responses are:<br>paper title is:
    <% out.print(PaperTitle); %>
    
    </body>
</html>