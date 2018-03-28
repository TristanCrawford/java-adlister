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
    <h1>${guess}</h1>
    <form action="/guess" method="post">
        <div class="form-group">
            <label for="reset">Reset Number?</label>
            <input class="form-check" type="checkbox" name="reset" id="reset">
            <button class="btn btn-default">Go Back!</button>
        </div>
    </form>
</div>
</body>
</html>
