<%@include file="tmp/header.jsp" %>
<nav class="navbar navbar-light bg-light ">
    <form class="form-inline">
        <a href="toLogin"><button class="btn btn-outline-primary mr-sm-2" type="button">Sign in</button></a>
        <a href="toPersonal"><button class="btn btn-outline-primary mr-sm-2" type="button">Personal</button></a>
        <a href="/" class="btn btn-outline-danger">Back</a>
    </form>
</nav>

<section class="container" >
    <div class="row align-items-center" style="height:700px">
        <div class="col-8">
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

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>
</section>
<%@include file="tmp/footer.jsp"%>
