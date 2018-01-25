<%-- 
    Document   : videos
    Created on : Jan 7, 2018, 11:54:10 PM
    Author     : UsmanAhmed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href=".\videos.css">
    <link rel="icon" type="picture" href=".\Images\youtube.png">
    <script src="UserFeature.js"></script>
    <title>Videos Watch-2gether</title>
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
                    String username=(String)session.getAttribute("username");
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
                                <% }
                            }
                        %>
                </space>
                <space>
                    <a href="index.jsp">Search</a>
                </space>
            </div>	
            <div class="background">
                <div class="body">
                    <div class="div1" id="zoom">
                        <a href="play.jsp"><img name="secretsuperstar" src=".\Images\secretSuperStar.jpg" height="300px" width="300px"></a>
                    </div>				
                    <div class="div2" id="zoom">
                        <a href="play.jsp"><img name="tigerzindahai" src=".\Images\tigerZindaHai.jpg" height="300px" width="300px"></a>
                    </div>
                    <div class="div3" id="zoom">
                        <a href="play.jsp"><img name="badshaho" src=".\Images\badshaho.jpg" height="300px" width="300px"></a>
                    </div>
                    <div class="div4" id="zoom">
                        <a href="play.jsp"><img name="punjabnahi" src=".\Images\Punjab-Nahi-Jaungi.jpg" height="300px" width="300px"></a>
                    </div>
                    <div class="div1" id="zoom">
                        <a href="play.jsp"><img name="looked" src=".\Images\looked.jpg" height="300px" width="300px"></a>
                    </div>
                    <div class="div2" id="zoom">
                        <a href="play.jsp"><img name="wrongnumber" src=".\Images\wrong number.jpeg" height="300px" width="300px"></a>
                    </div>
                    <div class="div3" id="zoom">
                        <a href="play.jsp"><img name="holiday" src=".\Images\Holiday.jpg" height="300px" width="300px"></a>
                    </div>
                    <div class="div4" id="zoom">
                        <a href="play.jsp"><img name="raees" src=".\Images\raees.jpeg" height="300px" width="300px"></a>
                    </div>
                    <br><br>
                    <pagination>
                        <a href="videos.jsp">&laquo;</a>
                        <a href="videos.jsp">1</a>
                        <a class="active" href="videos.jsp">2</a>
                        <a href="videos.jsp">3</a>
                        <a href="videos.jsp">4</a>
                        <a href="videos.jsp">5</a>
                        <a href="videos.jsp">6</a>
                        <a href="videos.jsp">&raquo;</a>
                    </pagination>
                </div>
            </div><br>
            <div class="footer">
                Watch2Gether has a simple goal: to make it easy for friends to watch videos together,<br>no matter where they are in the world. The whole idea of Watch2Gether is to give you <br>a cool place where you can relax and have fun with your friends. Enjoy Watch2Gether!
                <div class="vl"><br>
                    <sp>
                        <small>Copyright © 2018 Watch2Gather
                        </small>
                    </sp><br><br>
                    <space1>
                        <a href="homapage.jsp">
                            <img src=".\Images\facebook.jpg" width="30px" height="30px">&nbsp;
                                <small>Like Us on Facebook</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="homapage.jsp">
                            <img src=".\Images\twitter.png" width="20px" height="20px">&nbsp;
                                <small>Follow Us on Twitter</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="homapage.jsp">
                            <img src=".\Images\linkedin.png" width="20px" height="20px">&nbsp;
                                <small>Join Us on Linked In</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="homapage.jsp">
                            <img src=".\Images\instagram.png" width="20px" height="20px">&nbsp;
                                <small>InstaGram</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="homapage.jsp">
                            <img src=".\Images\google.png" width="20px" height="20px">&nbsp;
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