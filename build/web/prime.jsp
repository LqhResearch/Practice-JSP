<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Basic"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Số nguyên tố</title>
    </head>
    <%
        String ans1 = "", ans2 = "", n1 = "0", n2 = "0", n3 = "0";
        if (request.getParameter("n1") != null) {
            n1 = request.getParameter("n1");
            String str = Basic.IsPrime(Integer.parseInt(n1)) ? "" : " không";
            ans1 = n1 + str + " là số nguyên tố";
        }

        if (request.getParameter("n2") != null) {
            n2 = request.getParameter("n2");
            n3 = request.getParameter("n3");

            ans2 = "Số nguyên tố: " + Basic.PrimeAToB(Integer.parseInt(n2), Integer.parseInt(n3));
        }
    %>
    <body>
        <div class="d-flex">
            <jsp:include page="header.jsp" />
            <div class="container">
                <div class="card mt-5">
                    <div class="card-body">
                        <h3 class="text-center text-primary">Số nguyên tố</h3>
                        <form action="" method="GET">
                            <div class="input-group my-3">
                                <span class="input-group-text">Kiểm tra số nguyên tố n = </span>
                                <input type="text" class="form-control" value="<%=n1%>" name="n1">
                            </div>
                            <center>
                                <button class="btn btn-primary">Kết quả</button>
                            </center>
                        </form>
                        <div class="input-group my-3">
                            <span class="input-group-text">Kết quả: </span>
                            <input type="text" class="form-control" value="<%=ans1%>" disabled>
                        </div>
                    </div>
                </div>

                <div class="card mt-5">
                    <div class="card-body">
                        <h3 class="text-center text-primary">Số nguyên tố trong khoảng a, b</h3>
                        <form action="" method="GET">
                            <div class="input-group my-3">
                                <span class="input-group-text">A = </span>
                                <input type="text" class="form-control" value="<%=n2%>" name="n2">
                            </div>
                            <div class="input-group my-3">
                                <span class="input-group-text">B = </span>
                                <input type="text" class="form-control" value="<%=n3%>" name="n3">
                            </div>
                            <center>
                                <button class="btn btn-primary">Kết quả</button>
                            </center>
                        </form>
                        <div class="input-group my-3">
                            <span class="input-group-text">Kết quả: </span>
                            <input type="text" class="form-control" value="<%=ans2%>" disabled>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
