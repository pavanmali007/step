<%-- 
    Document   : registration
    Created on : 04-Jul-2023, 11:56:30 pm
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
        <center>
            <h2>Registration Form</h2>
        </center>
    <div class="div" id="container">
        <div class="div" id="fdiv">
            <p id="para">Registration</p>
            <div class="div" id="sdiv">
                <form name="studRegiForm" class="form" id="loginForm">
                    <input type="text" id="username" placeholder="enter username" name="username">
                    <br><input tepe="text" id="email" placeholder="enter email" name="email">
                    <br><input type="password" id="password" placeholder="enter password" name="password">
                    
                    <!--*****before registration data should be stored in database*****-->
                    
                    <br><button id="btn" onclick="return vali('regi')">registration</button><br>
                    <center>
                        <a href="index.jsp">login here</a>
                    </center>
                    <!--onclick="return vali()"-->
                </form>
            </div>
        </div>
    </div>
        <script src="js/login.js">
        </script>
    </body>
</html>
