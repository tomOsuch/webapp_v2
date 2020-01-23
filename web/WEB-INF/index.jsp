<%--
  Created by IntelliJ IDEA.
  User: tomas
  Date: 14.12.2019
  Time: 00:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <title>AplikacjaWeb</title>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
  <meta name="viewport" content="width=devivr-width, initial-scale=1.0">
  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet">
</head>
<body>

<!--Panel nawigacyjny-->
<jsp:include page="fragment/navbar.jsp" />

<c:if test="${not empty requestScope.discoveries}">
  <c:forEach var="discovery" items="${requestScope.discoveries}">
    <div class="container">
      <div class="row bs-callout bs-callout-primary">
        <div class="col col-md-1 col-sm-2">
          <a href="${pageContext.request.contextPath}/vote?discovery_id=${discovery.id}&vote=VOTE_UP" class="btn btn-block btn-primary btn-success">
            <span class="glyphicon glyphicon-arrow-up"></span>  </a>
          <div class="well well-sm centered"><c:out value="${discovery.upVote - discovery.downVote}" /></div>
          <a href="${pageContext.request.contextPath}/vote?discovery_id=${discovery.id}&vote=VOTE_DOWN" class="btn btn-block btn-primary btn-warning">
            <span class="glyphicon glyphicon-arrow-down"></span>  </a>
        </div>
        <div class="col col-md-11 col-sm-10">
          <h3 class="centered"><a href="<c:out value="${discovery.url}" />"><c:out value="${discovery.name}" /></a></h3>
          <h6><small>Dodane przez: <c:out value="${discovery.user.username}" />,
            Dnia: <fmt:formatDate value="${discovery.timestamp}" pattern="dd/mm/YYYY"/></small></h6>
          <p><c:out value="${discovery.description}" /></p>
          <a href="<c:out value="${discovery.url}" />" class="btn btn-default btn-xs">Przejdź do strony</a>
        </div>
      </div>
    </div>
  </c:forEach>
</c:if>

<jsp:include page="fragment/footer.jsp"/>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.mini.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</body>
</html>