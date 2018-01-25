<%-- 
    Document   : signup
    Created on : Jan 7, 2018, 3:32:39 PM
    Author     : UsmanAhmed
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = (String)session.getAttribute("username");
    if(username!=null)
        response.sendRedirect("index.jsp");
    else if(username==null)
    {
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="signup.css">
        <script src="signup.js"></script>
        <script src="UserFeature.js"></script>
        <script src="signupajax.js"></script>
        <link rel="icon" type="picture" href=".\Images\logo.png">
        <title>SignUp - Watch-2gether</title>
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
                                %><select id="op" onchange="Admin()">
                                        <option><%=username%></option>
                                        <option>My Account</option> 
                                        <option>User Accounts</option>
                                        <option>Logout</option>
                                    </select><%
                                }else{
                                %>
                                <select id="op" onchange="User()">
                                    <option><%=username%></option>
                                    <option>My Account</option> 
                                    <option>Logout</option>
                                </select>
                                <% }
                            }
                        %>
                </space>
                <space>
                    <a href="index.jsp">Search</a>
                </space>
            </div>
            <div class="background">
                <h1 class="margin">Sign Up</h1>
                <div class="main"><h>* Star shows that the feilds are mandatory.</h>
                    <div class="centeral"><br>
                        <form action="./SignUp" onsubmit="return (checkValidation())" method="post" id="form1">
                            <f>*</f><b> First Name </b>
                            <c1><input autofocus name="fname" id="fname" class="input" type="text" placeholder="Enter your First Name here" required></c1><br><br>
                            <f>*</f><b> Last Name </b>
                                <c2><input name="lname" id="lname" class="input" type="text" placeholder="Enter your Last Name here" required></c2><br><br>
                            <f>*</f><b> UserName </b>
                            <c2><input name="uname" id="uname" class="input" type="text" placeholder="Enter UserName here" onblur="ajax()" required></c2>
                            <span style="background-color: red; color:white" id="myDiv"></span>
                                <br><br>
                            <f>*</f><b> Email</b>
                            <c3><input name="email" id="email" class="input" type="email" placeholder="Enter your Email Address" required onblur="verifyEmailAsynchronously()"></c3><br><br>
                            <span style="background-color: red; color:white" id="myDiv1"></span>
                            <f>*</f><b> Confirm Email</b>
                                <c4><input name="cemail" id="cemail" class="input" type="email" placeholder="Confirm Email Address" required></c4><br><br>
                            <f>*</f><b> Password</b>
                                <c5><input name="pass" id="pass" class="input" type="Password" placeholder="Enter a Password" required></c5><br><br>
                            <f>*</f><b> Confirm Password</b>
                            <c6><input name="cpass" id="cpass" class="input" type="Password" placeholder="Confirm Password" required></c6><br><br>
                            <input type="submit" value="Sign Up" class="btn"/>
                            <span style="padding-left: 75px;"><a class='hover' href="login.jsp">Already have an account</a></span>
                        </form><br><br><br>
                    </div> 
                </div><br>
                <%
                    String status="hello";
                    status=(String)request.getAttribute("signupstatus");
                    if(status=="SignUp Successfully")
                    {
                        %><span style="color: white; background-color: yellow;"><%=status%></span><%
                    }
                    else if(status=="SignUp Failed Because User Already Exist")
                    {
                        out.println(true);
                        %><span style="color: white; background-color: yellow;"><%=status%></span><%
                    }
                %>
            </div>
            <div class="footer">
                Watch2Gether has a simple goal: to make it easy for friends to watch videos together,<br>no matter where they arein the world. The whole idea of Watch2Gether is to give you <br>a cool place where you can relax and have fun with your friends. Enjoy Watch2Gether!
                <div class="vl"><br>
                    <sp>
                        <small>
                            Copyright © 2018 Watch-2gether
                        </small>
                    </sp><br><br>
                    <space1>
                        <a href="https://www.facebook.com/Watch-2gether">
                            <img src="./Images/facebook.jpg" width="30px" height="30px">&nbsp;
                                <small>
                                    Like Us on Facebook
                                </small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src="./Images/twitter.png" width="20px" height="20px">&nbsp;
                                <small>Follow Us on Twitter</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src="./Images/linkedin.png" width="20px" height="20px">&nbsp;
                                <small>Join Us on Linked In</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src="./Images/instagram.png" width="20px" height="20px">&nbsp;
                                <small>InstaGram</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="#">
                            <img src="./Images/google.png" width="20px" height="20px">&nbsp;
                                <small>Follow Us on Google Plus+</small>
                        </a>
                    </space1>
                    <div class="contact">
                        <a href="">Usman Ahmed         <a1>     0303-4263971</a><br>
                    </div>
                </div><br>
            </div>
        </div>
    </body>
</html>
<%}%>