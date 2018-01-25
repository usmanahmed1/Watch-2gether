<%-- 
    Document   : playvideos
    Created on : Jan 12, 2018, 9:33:27 AM
    Author     : UsmanAhmed
--%>

<%@page import="ServleteAndDAO.DAOHomePage"%>
<%@page import="ServleteAndDAO.VideoData"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String url=(String)session.getAttribute("search");
    
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href=".\playvideo.css">
        <link rel="icon" type="picture" href=".\Images\signedlogologo.png">
        <script src="UserFeature.js"></script>
        <title>HOME Watch-2gether </title>
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
                            %><select id="op" onchange="Admin()">
                                <option><%=username%></option>
                                <option>My Account</option> 
                                <option>User Accounts</option>
                                <option>Logout</option>
                            </select><%
                            }
                            else
                            {%>
                                <select id="op" onchange="User()">
                                    <option><%=username%></option>
                                    <option>My Account</option> 
                                    <option>Logout</option>
                                </select>
                            <% 
                            }
                        }
                        %>
                </space>
                <space>
                    <a href="index.jsp">Search</a>
                </space>
            </div>	
            <div class="background">
                <div class="divclass">
                    <%
                        if(!(username.equals(null)))
                        {
                            if(!(url.equals(null))){
                                DAOHomePage hp=new DAOHomePage();
                                ArrayList<VideoData> data=hp.openVideoData(url);    
                    %>
                    <%
                            for (int i = 0; i < data.size(); i++) {
                                %><center><%
                                //out.println(data.get(i).getEmbedURl());
                                String imgsrc=data.get(i).getPosters();
                                String name=data.get(i).getName();
                                int id=data.get(i).getId();
                                %>
                                
                                
                                <a href=".\play.jsp?id=<%=id%>">
                                    <img src="<%=imgsrc%>" height="100px" width="175px">
                                </a>
                                <%                            
                            %><br>
                            <%
                                out.print(name);
                            }
                        }
                    }
                    %>
                        </center>
                    <br><br>
                </div>
                        
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
                                <small>Like Us on Facebook</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="https://www.twitter.com/watch-2gether">
                            <img src="./Images/twitter.png" width="20px" height="20px">&nbsp;
                                <small>Follow Us on Twitter</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="https://www.linkedin.com/watch-2gether">
                            <img src="./Images/linkedin.png" width="20px" height="20px">&nbsp;
                                <small>Join Us on Linked In</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="https://www.instagram.com/watch-2gether">
                            <img src="./Images/instagram.png" width="20px" height="20px">&nbsp;
                                <small>InstaGram</small>
                        </a>
                    </space1><br>
                    <space1>
                        <a href="https://wwwplus.google.com/watch-2gether">
                            <img src="./Images/google.png" width="20px" height="20px">&nbsp;
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