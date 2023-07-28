<%-- 
    Document   : index
    Created on : 29-Jun-2023, 7:39:31 pm
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
            <h2>Login Form</h2>
        </center>
    <div class="div" id="container">
        <div class="div" id="fdiv">
            <p id="para">Login</p>
            <div class="div" id="sdiv">
                <form name="loginForm" class="form" id="loginForm">
                    <input type="text" id="username" placeholder="enter username" name="username">
                    <br><input type="password" id="password" placeholder="enter password" name="password">
                    <br><button id="btn" onclick="return vali('log')">login</button><br>
                    <center>
                        <a href="registration.jsp">registration here</a>
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
