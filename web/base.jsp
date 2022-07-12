<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Basic"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chuyển đổi cơ số</title>
    </head>
    <%
        String ans = "", n = "0";
        if (request.getParameter("n") != null) {
            n = request.getParameter("n");
            ans = Basic.DecToBin(Integer.parseInt(n));
        }
    %>
    <body>
        <div class="d-flex">
            <jsp:include page="header.jsp" />
            <div class="container mt-5">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center text-primary">Thập phân sang nhị phân</h3>
                        <form action="" method="GET">
                            <div class="input-group my-3">
                                <span class="input-group-text">Số thập phân = </span>
                                <input type="text" class="form-control" value="<%=n%>" name="n">
                            </div>
                            <center>
                                <button class="btn btn-primary">Kết quả</button>
                            </center>
                        </form>
                        <div class="input-group my-3">
                            <span class="input-group-text">Kết quả: </span>
                            <input type="text" class="form-control" value="<%=ans%>" disabled>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
