<jsp:include page="/shared/header.jsp"/>

<%
    try {
        String statusLogin = session.getAttribute("statusLogin").toString();
        if (statusLogin.equals("1")) {
            
        }
    } catch (Exception e) {
        response.sendRedirect("login.jsp");
    }
%>

<div class="container">
    <div class="banner"></div>

    <!--main menu-->
    <jsp:include page="/shared/mainmenu.jsp"/>

    <div class="content">
        <h2>Admin</h2>
    </div>

    <jsp:include page="/shared/footer.jsp"/>

</div>
</body>
</html>