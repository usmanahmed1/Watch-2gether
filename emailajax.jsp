<%@page import="ServleteAndDAO.DAOSignUp"%>
<%
    DAOSignUp s=new DAOSignUp();
    String email = request.getParameter("mail");
    boolean flag =false;
    flag = s.checkEmailAsynchronously(email);
    String res="f";
    if(!flag)
    {
        res="EMail Alreadty Exist";
    }
    else
    {
        res= "Valid Email";
    }
%>
<%=res%>