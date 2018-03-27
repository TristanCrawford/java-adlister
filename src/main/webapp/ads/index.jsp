<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tristan
  Date: 3/27/18
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Open Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/navbar.jsp" />
<div class="container">
    <table class="table">
        <tr>
            <th>Title</th>
            <th>Description</th>
        </tr>
        <c:forEach var="ad" items="${ads}">
            <tr>
                <td>${ad.getTitle()}</td>
                <td>${ad.getDescription()}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
