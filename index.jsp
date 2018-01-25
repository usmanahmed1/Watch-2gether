<%-- 
    Document   : homepage
    Created on : Jan 7, 2018, 3:30:41 PM
    Author     : UsmanAhmed
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="ServleteAndDAO.DAOHomePage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String username=(String)session.getAttribute("username");
    
%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href=".\index.css">
        <link rel="icon" type="picture" href=".\Images\logo.png">
        <script src="UserFeature.js"></script>
        <title>HOME Watch-2gether</title>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <a href="./index.jsp"><img src=".\Images\logo.png" width="150px;" height="75px;"></a>
                <a href="./index.jsp"><img src=".\Images\signedlogo.png"></a>
                <home>
                    <a href="./index.jsp">Home</a>
                </home>
                <space>
                    <a href="./videos.jsp">Videos</a>
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
                    if(username==null)
                    {
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
                            else if(!(username.equals(null)))
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
                            }
                        %>
                </space>
                <space>
                    <a href="index.jsp">Search</a>
                </space>
                <div id="pad2">
                    SYNCHRONIZED PLAYER & CHAT
                </div>
                <div id="wvt">
                    WATCH VIDEOS TOGETHER
                </div><br>
                <div style="font-size: 20px;" id="pad2"><b>Create</b> or <b> Join</b> a room and invite friends...</div><br>
                <form action="./home" method="post">
                    <input autofocus class="input1" class="u1" type="text" name="search" placeholder="Search KeyWords or video url"><br><br>
                    
                    <%
                          String msg=(String)request.getAttribute("msg");
                          if(msg!=null){
                    %>
                </form>
                    <center><span style="color:white;"><%=msg%></span><%}%></center>
                <a href="#"><btn><img src=".\Images\youtube.png"  height="53px;"></btn></a>
                <a href="#"><btn1><img src=".\Images\dailymotion.png" height="45px;"></btn1></a>
                <a href="#"><btn1><img src=".\Images\tunepk.png" width="45px;" height="45px;"></btn1></a>
                <a href="#"><btn1><img src=".\Images\vimeo.png" width="45px;" height="45px;"></btn1></a>
                <hr><br>
                <script>
                    function saveVideo()
                    {
                        var videopath = document.getElementById("video").value;
                        document.getElementById("savevideo").value = videpath;
                        
                    }
                </script>
                <%
                    try
                    {
                    if(username.equals("Administrator"))
                    {
                        
                %>
                <form action="" method="post">
                    <input type="file" name="video" id="vbtn" onblur="saveVideo()"><span class="col">Upload Video</span>
                    <input type="file" name="pic" id="pbtn"><span class="col">Upload Picture</span>
                    <input type="submit" name="submit" id="ubtn" value="Upload">
                </form>
                    
                <%}
                }catch(NullPointerException ex)
                {
                System.out.println();
                }
                %>
            </div><br>
            <div class="background">
                <div class="body">
                    <br><br><br>
                    <center>
                        <video src="Business Explainer 1.mp4" controls autoplay muted width="850px" height="480px"></video>
                    </center>
                </div>
            </div>
            <div class="footer">
                Watch2Gether has a simple goal: to make it easy for friends to watch videos together,<br>no matter where they arein the world. The whole idea of Watch2Gether is to give you <br>a cool place where you can relax and have fun with your friends. Enjoy Watch2Gether!
                <div class="vl"><br>
                    <sp>
                        <small>
                            Copyright © 2018 Watch2Gather
                        </small>
                    </sp><br><br>
                    <space1>
                        <a href="#">
                            <img src=".\Images\facebook.jpg" width="30px" height="30px">&nbsp;
                                <small>Like Us on Facebook</small>
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