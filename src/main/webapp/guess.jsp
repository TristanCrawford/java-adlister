<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Pick A Number Between 1 And 100!"/>
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

    <form action="/guess" method="post">
        <div class="form-group">
            <label for="number">Number: </label>
            <input class="form-control" id="number" type="number" name="number" min="1" max="100" value="1">
        </div>
        <button class="btn btn-default">Guess!</button>
    </form>
</div>
</body>
</html>
