<%-- 
    Document   : login
    Created on : Jan 8, 2018, 1:49:52 AM
    Author     : UsmanAhmed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String uname = (String) session.getAttribute("username");
    if(uname!=null)
        response.sendRedirect("index.jsp");
    if(uname == null)
    {
%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="login.css">
        <script src="UserFeature.js"></script>
        <script src="login.js"></script>
        <link rel="icon" type="picture" href=".\Images\logo.png">
        <title>Login Watch-2gether</title>
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
                <space>
                    <a href="signup.jsp">SignUp</a>
                </space>
                <space>
                        <%
                            String username=(String)session.getAttribute("username");
                            if(username==null)
                            {
                                %><a href="login.jsp">Login</a><%
                            }
                            else if(username!=null)
                            {
                                if(username.equals("Administrator"))
                                {
                                    %><select id="op" onchange="Admin()">
                                        <option><%=username%></option>
                                        <option>My Account</option> 
                                        <option>User Accounts</option>
                                        <option>Logout</option>
                                    </select><%
                                }
                                %>
                                <select id="op" onchange="User()">
                                    <option><%=username%></option>
                                    <option>My Account</option> 
                                    <option>Logout</option>
                                </select>
                        <%}
                        %>
                </space>
                <space>
                    <a href="index.jsp">Search</a>
                </space>
            </div>
            <div class="background">
                <center>
                    <div class="innerdiv">
                        <center><h1>Log In</h1></center>
                        <h>* Star shows that the feilds are mandatory.</h>
                        <center><br>
                            <form action="./LOGIN" method="post" onsubmit="return validate()">
                                <font color="red">*</font><b> Email or UserName</b>
                                <c1><input autofocus id="emailoruser" name="eou" class="input" type="text" placeholder="Enter your Email Address or UserName" required></c1><br><br>
                                <font color="red">*</font><b> Password</b>
                                    <c2><input id="pass" name="pwd" class="input" type="Password" placeholder="Enter a Password" required></c2><br><br>
                                <button class="btn" onsubmit="ValidateLogin() ">Login</button>
                                <div style="padding-left: 385px;"><a class='hover' href="signup.jsp">I don't have an account</a></div>
                            </form>
                            <%
                                String status = (String) session.getAttribute("status");
                                if(status!=null){
                                out.println(status);
                                }
                            %>
                        </center><br>
                    </div><br>
                </center><br>
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
                            <img src=".\Images\facebook.jpg" width="30px" height="30px">&nbsp;
                                <small>Like Us on Facebook</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src=".\Images\twitter.png" width="20px" height="20px">&nbsp;
                                <small>Follow Us on Twitter</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src=".\Images\linkedin.png" width="20px" height="20px">&nbsp;
                                <small>Join Us on Linked In</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src=".\Images\instagram.png" width="20px" height="20px">&nbsp;
                                <small>InstaGram</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src=".\Images\google.png" width="20px" height="20px">&nbsp;
                                <small>Follow Us on Google Plus+</small>
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