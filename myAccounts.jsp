<%-- 
    Document   : myAccounts
    Created on : Jan 22, 2018, 1:28:19 AM
    Author     : Admin
--%>

<%@page import="ServleteAndDAO.SignUp"%>
<%@page import="ServleteAndDAO.DAOSignUp"%>
<%@page import="ServleteAndDAO.DAOHomePage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String username=(String)session.getAttribute("username");
    if(username==null)
    {
        response.sendRedirect("login.jsp");
    }
    else{
%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="myAccounts.css">
        <script src="UserFeature.js"></script>
        <title>My Account Watch-2gether</title>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <a href="index.jsp"><img src=".\Images\logo.png" width="150px;" height="75px;"></a>
                <a href="index.jsp"><img src=".\Images\signedlogo.png"></a>
                <home>
                    <a href="index.jsp">Home</a>
                </home>
                <space>
                    <a href="videos.jsp">Videos</a>
                </space>
                <space>
                    <a href="contactus.jsp">Contact Us</a>
                </space>
                <space>
                    <a href="feedback.jsp">Feed Back</a>
                </space>
                <space>
                    <a href="about.jsp">About</a>
                </space>
                <%
                    if(username==null){
                %>
                <space>
                    <a href="signup.jsp">SignUp</a>
                </space>
                <%}%>
                <space>
                    <%
                        if(username==null)
                        {
                            %><a href="login.jsp">Login</a><%
                        }
                        else if(username!=null)
                        {
                            if(username.equals("Administrator"))
                            {
                            %>
                            <select id="op" onchange="Admin()">
                                <option><%=username%></option>
                                <option>My Account</option> 
                                <option>User Accounts</option>
                                <option>Logout</option>
                            </select>
                            <%
                            }else{
                            %>
                            
                            <select id="op" onchange="User()">
                                    <option><%=username%></option>
                                    <option>My Account</option> 
                                    <option>Logout</option>
                                </select>
                            <%}
                        }%>
                </space>
                <space>
                    <a href="index.jsp">Search</a>
                </space>
            </div><br><br>
            <div class="background">
                <%
                    DAOSignUp d=new DAOSignUp();
                    SignUp sign = d.GetMyAccount(username);
                %>
                <center>
                <table border="2px;">
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>UserName</th>
                        <th>Email</th>
                    </tr>
                    <tr>
                        <%
                            %><td class="table1"><%out.println(sign.getFname());%></td><%
                            %><td class="table1"><%out.println(sign.getLname());%></td><%
                            %><td class="table1"><%out.println(sign.getUname());%></td><%
                            %><td class="table1"><%out.println(sign.getEmail());%></td><%
                        %>
                    </tr>
                    
                </table>
                </center>
                    
                <%
                    
                    
                %>
            </div><br>
            <div class="footer">
                Watch2Gether has a simple goal: to make it easy for friends to watch videos together,<br>no matter where they arein the world. The whole idea of Watch2Gether is to give you <br>a cool place where you can relax and have fun with your friends. Enjoy Watch2Gether!
                <div class="vl"><br>
                    <sp>
                        <small>
                            Copyright © 2018 Watch2Gather
                        </small>
                    </sp><br><br>
                    <space1>
                        <a href="https://www.facebook.com/Watch2Gather">
                            <img src="./Images/facebook.jpg" width="30px" height="30px">&nbsp;
                                <small>
                                    Like Us on Facebook
                                </small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src="./Images/twitter.png" width="20px" height="20px">&nbsp;
                                <small>
                                    Follow Us on Twitter
                                </small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src="./Images/linkedin.png" width="20px" height="20px">&nbsp;
                                <small>
                                    Join Us on Linked In
                                </small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src="./Images/instagram.png" width="20px" height="20px">&nbsp;
                                <small>
                                    InstaGram
                                </small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src="./Images/google.png" width="20px" height="20px">&nbsp;
                                <small>
                                    Follow Us on Google Plus+
                                </small>
                        </a>
                    </space1>
                    <div class="contact">
                        <a href="">Usman Ahmed         <a1>     0303-4263971</a><br>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<%}%>