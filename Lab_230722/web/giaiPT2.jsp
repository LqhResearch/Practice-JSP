<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giải phương trình 2</title>
    </head>
    <body>
        <%
            int a = Integer.parseInt(request.getParameter("a"));
            int b = Integer.parseInt(request.getParameter("b"));
            int c = Integer.parseInt(request.getParameter("c"));

            String kq;
            if (a == 0) {
                if (b == 0) {
                    if (c == 0) {
                        kq = "Phương trình vô số nghiệm";
                    } else {
                        kq = "Phương trình vô nghiệm";
                    }
                } else {
                    kq = "Nghiệm x = " + (-1.0 * c / b);
                }
            } else {
                int d = b * b - 4 * a * c;
                if (d > 0) {
                    double x1 = (-b + Math.sqrt(d)) / (2 * a);
                    double x2 = (-b - Math.sqrt(d)) / (2 * a);
                    kq = "Nghiệm x1 = " + x1 + "\nNghiệm x2 = " + x2;
                } else if (d == 0) {
                    double x = (-1.0 * b) / (2 * a);
                    kq = "Nghiệm x = " + x;
                } else {
                    kq = "Phương trình vô nghiệm";
                }
            }
        %>
        <h1><%=kq%></h1>
    </body>
</html>
