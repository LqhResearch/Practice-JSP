<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kiểm tra số nguyên tố</title>
    </head>
    <body>
        <%
            int n = Integer.parseInt(request.getParameter("n"));
            int dem = 0;
            for (int i = 1; i <= n; i++) {
                if (n % i == 0) {
                    dem++;
                }
            }
            String kq = dem == 2 ? n + " là số nguyên tố" : n + " không là số nguyên tố";
        %>
        <h1><%=kq%></h1>
    </body>
</html>
