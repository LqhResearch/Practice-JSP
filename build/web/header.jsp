<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="assets/img/favicon.png" />
        <!--Bootstrap 5-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!--My style-->
        <link rel="stylesheet" href="assets/css/style.css" />
        <style>
            .card {
                background-color: rgba(255, 255, 255, 0.7);
            }
        </style>
    </head>
    <body>
        <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 280px; height: 100vh;">
            <a href="#" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
                <span class="fs-4">Quốc Hưng</span>
            </a>
            <hr>
            <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="/JavaServlet/calculator.jsp">Tính toán 2 số</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/JavaServlet/equation.jsp">Giải phương trình</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/JavaServlet/factorial.jsp">Giai thừa</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/JavaServlet/prime.jsp">Số nguyên tố</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/JavaServlet/base.jsp">Chuyển đổi cơ số</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/JavaServlet/sum1n.jsp">Tổng 1 đến n</a>
                </li>
            </ul>
        </div>
    </body>
</html>
