<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <title>Forum</title>
</head>
<body>
<nav class="navbar" style="background-color: #99b19c">
    <div class="container">
        <span class="navbar-brand mb-0 fs-3">Welcome to our forum</span>
        <ul class="nav justify-content-end">
            <a class="btn btn-outline-dark fs-6 me-4" href="<c:url value='/'/>">Главная</a>
        </ul>
    </div>
</nav>
<div class="container">
    <h3 class="m-3">${post.name}</h3>
    <div class="row" style="background-color: #eaecf2">
        <span><fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${post.created}" /></span>
    </div>
    <div class="row mt-1">
        <div class="col-2 text-center align-middle fs-5 pt-3 me-1" style="background-color: #f2f6f8">${post.user.username}</div>
        <div class="col bg-light">
            <div class="m-2">
                <p class="fs-4">${post.name}</p>
                <p class="fs-6">${post.description}</p>
            </div>
        </div>
    </div>
    <a class="btn btn btn-outline-secondary fs-5 mt-4" href="<c:url value='/edit?id=${post.id}'/>">Редактировать</a>
</div>
</body>
</html>