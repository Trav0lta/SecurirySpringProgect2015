<%@include file="tmp/header.jsp" %>
    <H2>loginPage</H2>
<nav class="navbar navbar-light bg-light ">
    <form class="form-inline">
        <a href="toRegist"><button class="btn btn-outline-success mr-sm-2" type="button">Registration</button></a>
        <a href="toLogin"><button class="btn btn-outline-success mr-sm-2" type="button">Sign in</button></a>
        <a href="/" class="btn btn-outline-danger">Back</a>
    </form>
</nav>

<section class="container" >
    <div class="row align-items-center" style="height: 500px">
        <div class="col-8">
            <form action="/save2" method="post">
                <div class="form-group">
                    <label for="interest">interest </label>
                    <input type="text" name="interest" class="form-control">
                </div>
            <div class="form-group">
                <label for="aim">aim</label>
                <input type="text" name="aim" class="form-control">
            </div>
                <input type="submit" class="btn btn-primary"></input>

                <input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}"/>
            </form>
        </div>
    </div>
</section>
<%@include file="tmp/footer.jsp"%>
