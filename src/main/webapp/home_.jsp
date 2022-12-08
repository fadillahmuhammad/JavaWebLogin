<%-- 
    Document   : home
    Created on : 31 Okt 22, 10:50:54
    Author     : fadil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Home</title>
    </head>
    <body>
        <h1>Selamat Datang!</h1>
        <%
            String status = session.getAttribute("statusLogin").toString();
            String sessionNama = session.getAttribute("sessionNama").toString();
            
            String notif = "";
            if(status.equals("1")){
                notif = "Login Berhasil!";
            } else {
                response.sendRedirect("index.jsp");
            }
            
            //untuk mengambil data dari cookie
            Cookie[] cookie_ = request.getCookies();
            String dataCookie = "";
            for(int i=0; i<cookie_.length; i++){
                if(cookie_[i].getName().equals("cookieNama")){
                    dataCookie = cookie_[i].getValue().toString();
                }
            }
        %>
        
        Status = <%= notif %> <br>
        Data dari session <br>
        Nama = <%= sessionNama %> <br>
        Nama = <%= dataCookie %>
    </body>
</html>
