<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
        <h2>Logination</h2>

        <form action="/logination" method="post">
            <div class="form-group">
                <label for="validationCustom01">Login</label>
                <input type="text" name="username" class="form-control" id="validationCustom01" placeholder="Enter login" required>
            </div>

            <div class="form-group">
                <label for="validationCustom02">Password</label>
                <input type="password" name="password" class="form-control" id="validationCustom02" placeholder="Password" required>
            </div>

            <div class="form-check">
                <label class="form-check-label">
                    <input type="submit" class="form-check-input" type="checkbox">
                </label>
            </div>

            <input type="hidden"
                   name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>
        </form>

</body>
</html>
