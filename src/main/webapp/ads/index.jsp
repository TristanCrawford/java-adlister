<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <th>More Info</th>
        </tr>
        <c:forEach var="ad" items="${ads}">
            <tr>
                <td>${ad.getTitle()}</td>
                <td>${ad.getDescription()}</td>
                <td>
                    <a href="/show?id=${ad.getId()}" class="btn btn-default">More Info</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
