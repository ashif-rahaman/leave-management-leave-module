<%-- 
    Document   : home
    Created on : Dec 19, 2017, 4:02:45 PM
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
<body onload="showPendingMenu()">
    <div class="navbar container w3-theme-l1 w3-row">
        <img src="resources/images/icons/leave-small.png" class="w3-center" height="100%" alt="leave-small"/>
        <div class="navbar-menu">
            <a href="apply" style="text-decoration: none;">
                <span class="menu-item w3-hover-text-black" onclick="">Apply</span>
            </a>
            <a href="" style="text-decoration: none;">
                <span class="menu-item w3-hover-text-black" onclick="">My Application</span>
            </a>
            <a id="pending_menu" onclick="" style="text-decoration: none; visibility: hidden" class="w3-hover-text-black">
                <span class="menu-item">Pending Application</span>
                <span id="notification" class="w3-badge w3-large w3-red"></span>
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
            <div class="w3-card application-style w3-border-theme">
                <div class="w3-row">
                    <div class="w3-col" style="width: 93%">
                        <h3>Why do we use it?</h3>
                        <p>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                    </div>
                    <div class="w3-rest w3-margin-left">
                        <div class="w3-xxxlarge w3-text-green w3-btn w3-round-medium w3-hover-green w3-hover-text-white">&#x2714;</div>
                        <div class="w3-xxxlarge w3-text-red w3-btn w3-round-medium w3-hover-red w3-hover-text-white">&#x2716;</div>
                    </div>
                </div>
                <span class="w3-small">Applied by: Khan mohammod</span>
                <span class="w3-small w3-margin-left">Applied on: 27 August 2017</span>
            </div>

            <div class="w3-card application-style w3-border-theme">
                <div class="w3-row">
                    <div class="w3-col" style="width: 93%">
                        <h3>Why do we use it?</h3>
                        <p>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                    </div>
                    <div class="w3-rest w3-margin-left">
                        <div class="w3-xxxlarge w3-text-green w3-btn w3-round-medium w3-hover-green w3-hover-text-white">&#x2714;</div>
                        <div class="w3-xxxlarge w3-text-red w3-btn w3-round-medium w3-hover-red w3-hover-text-white">&#x2716;</div>
                    </div>
                </div>
                <span class="w3-small">Applied by: Khan mohammod</span>
                <span class="w3-small w3-margin-left">Applied on: 27 August 2017</span>
            </div>
        </div>
    </div>
</body>
</html>
