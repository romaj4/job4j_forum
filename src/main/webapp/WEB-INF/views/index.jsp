<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <a class="btn btn-outline-dark fs-6" href="<c:url value='/login'/>">Авторизация</a>
        </ul>
    </div>
</nav>
<div class="container">
    <a class="btn btn btn-outline-secondary fs-5 m-4 float-end" href="<c:url value='/create'/>">Новая тема</a>
    <table class="table">
        <thead style="background-color: #99b19c">
        <tr>
            <th class="col fs-5" scope="col">Тема</th>
            <th class="col-3 fs-5" scope="col">Дата</th>
            <th class="col-1 fs-5" scope="col"></th>
            <th class="col-1 fs-5" scope="col"></th>
        </tr>
        </thead>
        <tbody style="background-color: #f7f7f7">
        <c:forEach var="post" items="${posts}">
            <tr>
                <td class="fw-bolder"><a class="link-dark" href="<c:url value='/post?id=${post.id}'/>">${post.name}</a></td>
                <td>${post.created}</td>
                <td class="text-center"><a class="btn btn-outline-secondary btn-sm" href="<c:url value='/post?id=${post.id}'/>">Перейти</a></td>
                <td class="text-center"><a class="btn btn-outline-secondary btn-sm" href="<c:url value='/edit?id=${post.id}'/>">Редактировать</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>