<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Điều khiển</title>
    </head>
    <body>
        <%
            String loaiBT = request.getParameter("loai-bt");
            if (loaiBT.equals("1")) { %>
        <jsp:forward page="soNgTo.jsp"></jsp:forward>
        <%} else if (loaiBT.equals("2")) {%>
        <jsp:forward page="giaiPT2.jsp"></jsp:forward>
        <%}%>
    </body>
</html>
