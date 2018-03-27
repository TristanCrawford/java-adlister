<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%! private String uname = ""; %>
<%! private String pwd = ""; %>

<%
    if (request != null) {
        uname = request.getParameter("username");
        pwd = request.getParameter("password");
        if (uname != null && pwd != null) {
            if (uname.equals("admin") && pwd.equals("password")) {
                response.sendRedirect("profile.jsp");
            } else {
                response.sendRedirect("login.jsp?invalid");
            }
        }
    }
%>

<html>
<head>
    <title>Login</title>
    <%@include file="partials/styles.jsp" %>
</head>
<body>
<%@include file="partials/navbar.jsp" %>
<c:set var="isInvalid" value="${paramValues.containsKey(\"invalid\")}"/>
<c:if test="${isInvalid}">
    <h3>Invalid Login!</h3>
</c:if>
<form action="login.jsp" method="post">
    Username: <input type="text" name="username" id="username">
    Password: <input type="password" name="password" id="password">
    <button type="submit">Log In!</button>
</form>
</body>
</html>