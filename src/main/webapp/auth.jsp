<%
    String user = request.getParameter("user");
    String password = request.getParameter("pass");

    if (user.equals("admin") && password.equals("1234")) {
        session.setAttribute("statusLogin", "1");
        session.setAttribute("name", "Muhammad Fadillah Rizky");
        session.setAttribute("nim", "201011400805");
        session.setMaxInactiveInterval(600);
        response.sendRedirect("admin.jsp");
    } else {
        session.setAttribute("gagalLogin", "1");
        session.setMaxInactiveInterval(3);
        response.sendRedirect("login.jsp");
    }

%>