<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp" %>

<nav class="navbar navbar-light bg-light ">
    <form class="form-inline">
        <a href="toLogin"><button class="btn btn-outline-success mr-sm-2" type="button">Sign in</button></a>
        <a href="toRegist"><button class="btn btn-outline-primary" type="button">Registration</button></a>
    </form>
</nav>

<div class="view">
    <div class="full-bg-img flex-center">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col">
                    <a class="btn btn-info" href="toPersonal" role="button">to Personal page</a>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="tmp/footer.jsp"%>
