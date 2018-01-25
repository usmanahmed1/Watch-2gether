<%-- 
    Document   : logout
    Created on : Jan 21, 2018, 4:30:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.getAttribute("username");
    session.invalidate();
    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
    rd.include(request, response);
%>