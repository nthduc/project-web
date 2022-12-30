<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    /**
     * Xử lí chuyển trang Home khi chạy
     *
     * @author Nguyen Thai Duc
     * @version 1.0
     * @since 2022-12-30
     */
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP</title>
</head>
<body>
<h1>LOADING...</h1>
<c:redirect url="/home.jsp"/>
</body>
</html>