<%--
  Created by IntelliJ IDEA.
  User: tomas
  Date: 06.12.2019
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Dodaj nową stronę</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=devivr-width, initial-scale=1.0">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet">
</head>
<body>

<!--Panel nawigacyjny-->
<jsp:include page="fragment/navbar.jsp" />

<div class="container">
    <div class="col-md-8 col-md-offset-2">
        <form class="form-signin" method="post" action="add">
            <h2 class="form-signin-heading">Dodaj nową stronę</h2>
            <input name="inputName" type="text" class="form-control" placeholder="Co dodajesz?" required autofocus />
            <input name="inputUrl" type="url" class="form-control" placeholder="URL" required autofocus />
            <textarea name="inputDescription" rows="5" class="form-control" placeholder="Opis" required autofocus></textarea>
            <input class="btn btn-lg btn-primary btn-block" type="submit" value="Dodaj!" />
        </form>
    </div>
</div>

<jsp:include page="fragment/footer.jsp"/>

</body>
</html>
