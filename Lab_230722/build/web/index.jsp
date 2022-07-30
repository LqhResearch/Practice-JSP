<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kiểm tra toán cơ bản</title>
        <style>
            .group {
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .group label {
                width: 200px;
            }

            .center {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <form action="dieukhien.jsp">
            <h1 class="center">Kiểm tra toán cơ bản</h1>
            <div class="group">
                <label>Nhập a: </label>
                <input type="text" name="a" placeholder="Nhập a" />
            </div>
            <div class="group">
                <label>Nhập b: </label>
                <input type="text" name="b" placeholder="Nhập b" />
            </div>
            <div class="group">
                <label>Nhập c: </label>
                <input type="text" name="c" placeholder="Nhập c" />
            </div>
            <div class="group">
                <label>Nhập n: </label>
                <input type="text" name="n" placeholder="Nhập n" />
            </div>
            <div class="group">
                <label>Kiểm tra số nguyên tố: </label>
                <input type="radio" name="loai-bt" value="1" />
            </div>
            <div class="group">
                <label>Giải phương trình bậc 2: </label>
                <input type="radio" name="loai-bt" value="2" />
            </div>
            <div class="center">
                <button type="button">Reset</button>          
                <button type="submit">Gửi</button>
            </div>
        </form>
    </body>
</html>
