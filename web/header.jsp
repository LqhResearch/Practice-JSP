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
    </head>
    <body>
        <div class="container-fluid header">
            <h1>Máy tính cá nhân</h1>
            <p>Thực hành môn Phát triển ứng dụng Web với Servlet & Java Server Page</p> 
        </div>

        <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <div class="container-fluid">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="/JavaServlet/calculator.jsp">Tính toán 2 số</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/JavaServlet/equation.jsp">Giải phương trình</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/JavaServlet/factorial.jsp">Giai thừa</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/JavaServlet/prime.jsp">Số nguyên tố</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/JavaServlet/base.jsp">Chuyển đổi cơ số</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/JavaServlet/sum1n.jsp">Tổng 1 đến n</a>
                    </li>
                </ul>
            </div>
        </nav>
    </body>
</html>
