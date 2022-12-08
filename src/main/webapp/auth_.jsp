<%-- 
    Document   : auth_.jsp
    Created on : 31 Okt 22, 10:51:02
    Author     : fadil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Auth</title>
    </head>
    <body>
        <h1>Cek Autentifikasi</h1>
        Username = <%= request.getParameter("user")%><br>
        Password = <%= request.getParameter("pass")%><br>

        <%
            String user = request.getParameter("user");
            String password = request.getParameter("pass");
            String notif = "";
            if (user.equals("fadil") && password.equals("123")) {
                notif = "Login Berhasil";

                // menambahkan nilai session
                session.setAttribute("statusLogin", "1");
                session.setAttribute("sessionNama", "Muhammad Fadillah Rizky - 201011400805");
                session.setMaxInactiveInterval(300);

                session.setMaxInactiveInterval(60);

                // menambahkan nilai ke dalam cookie
                Cookie test_cookie = new Cookie("cookieNama", "Fadillah");
                test_cookie.setMaxAge(300);
                response.addCookie(test_cookie);

                response.sendRedirect("home.jsp");
            } else {
                notif = "Username dan Password tidak ditemukan!";
            }
        %>

        Status Login = <%= notif%>
    </body>
</html>
