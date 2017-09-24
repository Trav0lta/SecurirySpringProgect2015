<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 24.09.2017
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
    <h2>Registration</h2>

    <form action="save" method="post">


        <div class="form-row">
            <div class="field">
                <label for="firstName">First name</label>
                <input type="text" name="firstName" class="form-control" id="firstName" placeholder="Enter first name">
            </div>
            <div class="field">
                <label for="lastName">Last name</label>
                <input type="text" name="lastName" class="form-control" id="lastName" placeholder="Enter last name">
            </div>
        </div>



        <div class="field">
            <label for="exampleFormControlFile1">Upload an avatar</label>
            <input type="file" name="avatar" class="form-control-file" id="exampleFormControlFile1">
        </div>

        <div class="field">
            <label for="validationRegisterEmail">Email</label>
            <input type="email" name="email" class="form-control" id="validationRegisterEmail" placeholder="Enter email">
        </div>

        <div class="field">
            <label for="validationRegister01">Login</label>
            <input type="text" name="username" class="form-control" id="validationRegister01" placeholder="Enter login" required>
        </div>

        <div class="field">
            <label for="validationRegister02">Password</label>
            <input type="password" name="password" class="form-control" id="validationRegister02" placeholder="Create password" required><br>
        </div>

        <input type="submit" class="btn btn-primary"></input>

        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </form>
    <a href="toLogin">to Logination page</a>
</body>
</html>
