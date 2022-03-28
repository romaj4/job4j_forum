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
        <a class="btn btn-outline-dark fs-6" href="<c:url value='/'/>">Главная</a>
    </div>
</nav>
<div class="container mt-5">
    <p class="text-center fs-2">Редактировать тему</p>
    <form class="fs-6" action="<c:url value='/save?id=${post.id}'/>" method='POST'>
        <div class="mb-3">
            <label for="name" class="form-label">Тема</label>
            <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name='name' value="${post.name}">
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Описание</label>
            <input type="text" class="form-control" id="description" name='description' value="${post.description}">
        </div>
        <button type="submit" class="btn mt-4" style="background-color: #99b19c" >Сохранить</button>
    </form>

</div>
</body>
</html>

