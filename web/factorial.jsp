<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Basic"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giai thừa</title>
    </head>
    <%
        String ans = "", n = "0";
        if (request.getParameter("n") != null) {
            n = request.getParameter("n");
            ans = Integer.toString(Basic.Factorial(Integer.parseInt(n)));
        }
    %>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center text-success">Giai thừa</h3>
                    <form action="" method="GET">
                        <div class="input-group my-3">
                            <span class="input-group-text">Số n = </span>
                            <input type="text" class="form-control" value="<%=n%>" name="n">
                        </div>
                        <button class="btn btn-primary">Kết quả</button>
                    </form>
                    <div class="input-group my-3">
                        <span class="input-group-text">Kết quả: </span>
                        <input type="text" class="form-control" value="<%=ans%>" disabled>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
