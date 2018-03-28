<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Ad ${ad.id}"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/navbar.jsp"/>
<div class="container">
    <table class="table">
        <tr>
            <th>Id</th>
            <th>UserId</th>
            <th>Title</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>${ad.getId()}</td>
            <td>${ad.getUserId()}</td>
            <td>${ad.getTitle()}</td>
            <td>${ad.getDescription()}</td>
        </tr>
    </table>
</div>
</body>
</html>
