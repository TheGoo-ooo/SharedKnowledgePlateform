<%-- 
    Document   : login
    Created on : 22 févr. 2018, 10:44:17
    Author     : luca.srdjenov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please, log in</h1>
        <form method="POST" action="j_security_check">                
            Username: <input type="text" name="j_username" /><br /> 
            Password :  <input type="password" name="j_password" />  
            <input type="submit" value="Login" />              
            <input type="reset" value="Reset" />          
        </form>        
    </body>
</html>
