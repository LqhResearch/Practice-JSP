<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Basic"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tổng 1 đến n</title>
    </head>
    <%
        String ans = "", n = "";
        if (request.getParameter("n") != null && request.getParameter("bt") != null) {
            n = request.getParameter("n");
            ans = Integer.toString(Basic.Sum1n(Integer.parseInt(n), Integer.parseInt(request.getParameter("bt"))));
        }
    %>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center text-success">Tổng 1 đến n</h3>
                    <form action="" method="GET">
                        <div class="input-group my-3">
                            <span class="input-group-text">Số n = </span>
                            <input type="text" class="form-control" value="<%=n%>" name="n">
                        </div>
                        <div class="input-group my-3">
                            <span class="input-group-text">Phép toán</span>
                            <select class="form-select" name="bt">
                                <option value="1">1! + 3! + 5! + ... + n!</option>
                                <option value="0">2! + 4! + 6! + ... + n!</option>
                            </select>
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
