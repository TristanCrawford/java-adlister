<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Pick A Color!"/>
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

    <form action="/pickcolor" method="post">
        <div class="form-group">
            <label for="color">Color: </label>
            <input class="form-control" id="color" type="color" name="color">
        </div>
        <button class="btn btn-default">Color Me!</button>
    </form>
</div>
</body>
</html>
