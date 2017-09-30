<%@include file="tmp/header.jsp" %>
<nav class="navbar navbar-light bg-light ">
    <form class="form-inline">
        <a href="toRegist"><button class="btn btn-outline-success mr-sm-2" type="button">Registration</button></a>
        <a href="toPersonal"><button class="btn btn-outline-primary" type="button">Personal</button></a>
        <a href="/" class="btn btn-outline-danger">Back</a>
    </form>
</nav>

<section class="container" >
    <div class="row align-items-center" style="height: 500px">
        <div class="col-8">
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

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        </div>
    </div>
</section>

<%@include file="tmp/footer.jsp"%>
