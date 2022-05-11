<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Basic"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giải phương trình</title>
    </head>
    <body>
        <%
            String ans = "", a = "0", b = "0", c = "0";
            if (request.getParameter("a") != null && request.getParameter("b") != null && request.getParameter("c") != null && request.getParameter("bt") != null) {
                a = request.getParameter("a");
                b = request.getParameter("b");
                c = request.getParameter("c");

                switch (request.getParameter("bt")) {
                    case "1":
                        ans = Basic.Equation1(Integer.parseInt(a), Integer.parseInt(b));
                        break;
                    case "2":
                        ans = Basic.Equation2(Integer.parseInt(a), Integer.parseInt(b), Integer.parseInt(c));
                        break;
                }
            }
        %>
        <jsp:include page="header.jsp" />
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center text-success">Giải phương trình</h3>
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
                            <span class="input-group-text">Số c = </span>
                            <input type="text" class="form-control" value="<%=c%>" name="c">
                        </div>
                        <div class="input-group my-3">
                            <span class="input-group-text">Phép toán</span>
                            <select class="form-select" name="bt">
                                <option value="1">Giải phương trình bậc 1</option>
                                <option value="2">Giải phương trình bậc 2</option>
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
