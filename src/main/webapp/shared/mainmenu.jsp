<%
    String menu = "";
    try {
        String statusLogin = session.getAttribute("statusLogin").toString();
        String name = session.getAttribute("name").toString();
        if (statusLogin.equals("1")) {
            menu = "<a href='http://localhost:8080/tplp012/logout.jsp' class='menu'>Logout</a> Hello, " + name;
        }
    } catch (Exception e) {
        menu = "<a href='http://localhost:8080/tplp012/login' class='menu'>Login</a>";
    }
%>
<div class="mainmenu">
    <a href="http://localhost:8080/tplp012/home" class="menu">Home</a>
    <a href="http://localhost:8080/tplp012/portfolio" class="menu">Porfolio</a>
    <a href="http://localhost:8080/tplp012/kontak" class="menu">Kontak</a>
    <%= menu%>
</div>