<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Basic"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Số nguyên tố</title>
    </head>
    <%
        String ans = "", n = "0";
        if (request.getParameter("n") != null) {
            n = request.getParameter("n");
            String str = Basic.IsPrime(Integer.parseInt(n)) ? "" : " không";
            ans = n + str + " là số nguyên tố";
        }
    %>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center text-success">Số nguyên tố</h3>
                    <form action="" method="GET">
                        <div class="input-group my-3">
                            <span class="input-group-text">Kiểm tra số nguyên tố n = </span>
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
