<jsp:include page="/shared/header.jsp"/>
<div class="container">
    <div class="banner"></div>

    <!--main menu-->
    <jsp:include page="/shared/mainmenu.jsp"/>

    <%
        String infoLogin = "";
        try {
            String gagalLogin = session.getAttribute("gagalLogin").toString();
            if (gagalLogin.equals("1")) {
                infoLogin = "<h3>Username dan Password tidak ditemukan!</h3>";
            }
        } catch (Exception e) {

        }
    %>

    <div class="content">
        <h2>Login</h2>
        <%= infoLogin%>
        <form action="auth.jsp" method="post">
            Username = <input type="text" name="user"> <br><br>
            Password = <input type="password" name="pass"> <br><br>
            <input type="submit" value="Login">
        </form>
    </div>

    <jsp:include page="/shared/footer.jsp"/>

</div>
</body>
</html>