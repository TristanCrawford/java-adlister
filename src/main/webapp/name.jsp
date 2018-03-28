<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Enter Your Name!"/>
    </jsp:include>
</head>
<body>
<div class="container">
    <c:if test="${ not empty error }">
        <div class="panel panel-danger">
            <div class="panel-heading">Uh Oh...</div>
            <div class="panel-body">${error}</div>
        </div>
    </c:if>

    <form action="/name" method="post">
        <div class="form-group">
            <label for="name">Name: </label>
            <input class="form-control" id="name" type="text" name="name">
        </div>
        <input type="submit" class="btn btn-default">
    </form>
</div>
</body>
</html>
