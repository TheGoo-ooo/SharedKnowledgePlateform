<%-- 
    Document   : logout
    Created on : 24 avr. 2018, 18:52:33
    Author     : luca.srdjenov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    session.invalidate();
    session = request.getSession();
    response.sendRedirect("/SharedKnowledgePlateform/faces/logout.xhtml");
%>
