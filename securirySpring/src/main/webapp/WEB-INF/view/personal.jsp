<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 23.09.2017
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <H2>loginPage</H2>

    <form action="save2" method="post">

            <div class="field">
                <label for="interest">Interest </label>
                <input type="text" name="interest">
            </div>
            <div class="field">
                <label for="aim">aim</label>
                <input type="text" name="aim">
            </div>



        <input type="submit" class="btn btn-primary"></input>

        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </form>
</body>
</html>
