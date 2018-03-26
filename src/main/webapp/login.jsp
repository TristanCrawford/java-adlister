<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if(request != null) {
        String u = request.getParameter("username"), p = request.getParameter("password");
        if(u != null && p != null) {
            if (u.equals("admin") && p.equals("password")) {
                response.sendRedirect("profile.jsp");
            } else {
                response.sendRedirect("login.jsp");
            }
        }
    }
%>

<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="login.jsp" method="post">
    Username: <input type="text" name="username" id="username">
    Password: <input type="password" name="password" id="password">
    <button type="submit">Log In!</button>
</form>
</body>
</html>