<%-- 
    Document   : home
    Created on : Dec 19, 2017, 4:02:45 PM
    Author     : ashif
--%>

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
        <img src="resources/images/icons/leave-small.png" height="100%" alt="leave-small"/>
        <div class="navbar-menu">
            <span class="menu-item w3-hover-text-black" onclick="">My Application</span>
            <span class="menu-item w3-hover-text-black" onclick="">Pending Application</span>
            <a href="logout"><span class="menu-item w3-hover-text-red w3-text-dark-gray">Logout</span></a>
        </div>
    </div>
</body>
</html>
