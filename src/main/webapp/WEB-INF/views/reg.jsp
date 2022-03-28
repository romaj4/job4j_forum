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
            <a class="btn btn-outline-dark fs-6" href="<c:url value='/login'/>">Авторизация</a>
        </ul>
    </div>
</nav>
<div class="container mt-5">
    <p class="text-center fs-2">Регистрация</p>
    <div class="col-6">
        <c:if test="${not empty errorMessage}">
            <div style="color:red; font-weight: bold; margin: 30px 0px;">
                    ${errorMessage}
            </div>
        </c:if>
        <form name='login' action="<c:url value='/reg'/>" method='POST'>
            <table class="table table-borderless fs-5">
                <tr>
                    <td>UserName:</td>
                    <td><input type='text' name='username'></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type='password' name='password'/></td>
                </tr>
                <tr>
                    <td colspan='2'><input name="submit" type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>
