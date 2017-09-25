<%@include file="tmp/header.jsp" %>
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
<%@include file="tmp/footer.jsp"%>
