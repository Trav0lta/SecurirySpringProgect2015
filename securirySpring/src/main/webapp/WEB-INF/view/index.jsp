<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 21.09.2017
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>Index</h2>
    <br/>


    <form action="save" method="post">
        <input type="text" name="username">
        <input type="password" name="password">
        <input type="submit">
        <input type="hidden"
        name="${_csrf.parameterName}"
        value="${_csrf.token}"/>

    </form>

    <a href="toLogin">to Login page</a>
</body>
</html>
