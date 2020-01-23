<%--
  Created by IntelliJ IDEA.
  User: tomas
  Date: 25.12.2019
  Time: 00:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <a href="${pageContext.request.contextPath}" class="navbar-brand"><img src="${pageContext.request.contextPath}/resources/fonts/willis-towers-watson-logo2125.png" width="357" height="20"></a>

    <button class="navbar-toggle" data-toggle="collapse" data-tarrget=".navHeaderCollapse">
        <span class="glyphicon glyphicon-list"></span>
    </button>

    <div class="collapse navbar-collapse navHaderCollapse">
        <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="${pageContext.request.contextPath}">Główna</a></li>
            <li><a href="${pageContext.request.contextPath}/add">Dodaj</a></li>
            <c:choose>
                <c:when test="${not empty sessionScope.user}">
                    <li><a href="${pageContext.request.contextPath}/logout">Wyloguj się</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="${pageContext.request.contextPath}/login">Zaloguj się</a></li>
                </c:otherwise>
            </c:choose>
        </ul>

    </div>
</nav>
