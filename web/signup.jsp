<%-- 
    Document   : index
    Created on : Dec 17, 2017, 9:36:05 PM
    Author     : ashif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" type="image/x-icon" href="resources/images/icons/leave16x16.png" />
        <title>Signup</title>
        <link href="resources/stylesheets/genstyle.css" rel="stylesheet" type="text/css"/>
        <link href="resources/stylesheets/library/w3-theme-blue.css" rel="stylesheet" type="text/css"/>
        <link href="resources/stylesheets/library/w3.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="w3-theme-light" style="font-family: 'Lato', sans-serif;">

        <div class="w3-container w3-padding-64">

            <div class="w3-margin-bottom w3-center">

                <label class="w3-xxlarge w3-center"><b>My Forgo Sign Up</b></label>
            </div>

            <div class="w3-row" style="">
                <img class="w3-third" src="resources/images/icons/leave_large.png" alt="leave_large" style="filter: opacity(50%);"/>

                <div class="w3-half w3-large">
                    <form action="" method="POST">
                        <label class="">First Name</label>
                        <input name="first_name" class="w3-xlarge w3-input w3-border w3-round-large w3-light-gray w3-margin-bottom" type="text" placeholder="e.g., Ashifur">

                        <label class="">Last Name</label>
                        <input name="last_name" class="w3-xlarge w3-input w3-border w3-round-large w3-light-gray w3-margin-bottom" type="text" placeholder="e.g., Rahaman">

                        <label class="">Username</label>
                        <input name="username" class="w3-xlarge w3-input w3-border w3-round-large w3-light-gray w3-margin-bottom" type="text" placeholder="Username to login">

                        <label class="">Email</label>
                        <input name="email" class="w3-xlarge w3-input w3-border w3-round-large w3-light-gray w3-margin-bottom" type="text" placeholder="e.g., email@example.com">

                        <label class="">Password</label>
                        <input name="password" class="w3-xlarge w3-input w3-border w3-round-large w3-light-gray w3-margin-bottom" type="text" placeholder="e.g., *********">

                        <label>Repeat Password</label>
                        <input name="repeat_password" class="w3-xlarge w3-input w3-border w3-round-large w3-light-gray" type="password" placeholder="e.g., *********">

                        <div class="w3-row w3-margin-top">
                            <input type="submit" value="Sign Up" class="w3-btn w3-theme-l1 w3-round" style="padding-left: 7%; padding-right: 7%;">
                            <a  href="index" class="w3-right w3-text-theme" style="margin-top: 3%">Already have an account</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
