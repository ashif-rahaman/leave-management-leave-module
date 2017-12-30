<%-- 
    Document   : apply
    Created on : Dec 30, 2017, 1:20:55 PM
    Author     : ashif
--%>

<%
    String user = (String) request.getSession().getAttribute("userKey");
    if (user == null) {

        response.sendRedirect("index");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <head>
        <link rel="shortcut icon" type="image/x-icon" href="resources/images/icons/leave16x16.png" />
        <title>Home</title>
        <link href="resources/stylesheets/genstyle.css" rel="stylesheet" type="text/css"/>
        <link href="resources/stylesheets/library/w3-theme-blue.css" rel="stylesheet" type="text/css"/>
        <link href="resources/stylesheets/library/w3.css" rel="stylesheet" type="text/css"/>
        <script src="resources/script/homescript.js" type="text/javascript"></script>
    </head>
</head>
<body>
    <div class="navbar container w3-theme-l1 w3-row">
        <img src="resources/images/icons/leave-small.png" class="w3-center" height="100%" alt="leave-small"/>
        <div class="navbar-menu">
            <a href="" style="text-decoration: none;">
                <span class="menu-item w3-hover-text-black" onclick="">Apply</span>
            </a>
            <a href="" style="text-decoration: none;">
                <span class="menu-item w3-hover-text-black" onclick="">My Application</span>
            </a>
            <a href="" style="text-decoration: none;" class="w3-hover-text-black" onclick="">
                <span class="menu-item">Pending Application</span>
                <span id="notification" class="w3-badge w3-large w3-red" style="visibility: visible;"></span>
            </a>
            <a href="logout" style="text-decoration: none;">
                <span class="menu-item w3-hover-text-red w3-text-dark-gray">Logout</span>
            </a>
        </div>
    </div>
    <div class="w3-row w3-border">

        <!--left side-->
        <div class="w3-container w3-col w3-padding-24" style="width: 20%">
            <img class="w3-center" src="resources/images/dummy/dummy_man.png" alt="dummy_man" width="70%" style="display: block"/>
            <span id="name" style="display: block; padding: 20px 0px 0px 30px">Abdul Jobbar</span>
        </div>

        <!--right side-->
        <div class="w3-container w3-rest w3-card-4">

        </div>
    </div>
</body>
</html>
