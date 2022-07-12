<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Basic"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Máy tính cá nhân</title>
    </head>
    <%
        String ans = "", a = "0", b = "0";
        if (request.getParameter("a") != null && request.getParameter("b") != null && request.getParameter("pt") != null) {
            a = request.getParameter("a");
            b = request.getParameter("b");
            ans = Basic.Calculator(Integer.parseInt(a), Integer.parseInt(b), request.getParameter("pt"));
        }
    %>
    <body>
        <div class="d-flex">
            <jsp:include page="header.jsp" />
            <div class="container mt-5">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center text-primary">Tính toán 2 số</h3>
                        <form action="" method="GET">
                            <div class="input-group my-3">
                                <span class="input-group-text">Số a = </span>
                                <input type="text" class="form-control" value="<%=a%>" name="a">
                            </div>
                            <div class="input-group my-3">
                                <span class="input-group-text">Số b = </span>
                                <input type="text" class="form-control" value="<%=b%>" name="b">
                            </div>
                            <div class="input-group my-3">
                                <span class="input-group-text">Phép toán</span>
                                <select class="form-select" name="pt">
                                    <option value="+">Cộng</option>
                                    <option value="-">Trừ</option>
                                    <option value="*">Nhân</option>
                                    <option value="/">Chia</option>
                                </select>
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
