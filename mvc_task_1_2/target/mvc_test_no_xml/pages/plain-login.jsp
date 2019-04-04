<%--
  Created by IntelliJ IDEA.
  User: sbotnaru
  Date: 4/3/2019
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Login Form</title>
</head>
<body>

<h3>My Login PAGE</h3>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">

    <c:if test="${param.error!=null}">
        <i>Sorry, wrong username or password</i>
    </c:if>

    <c:if test="${param.logout!=null}">
        <i>You have been logout</i>
    </c:if>

    <p>
        User name: <input type="text" name="username">
    </p>

    <p>
        Password :<input type="text" name="password">
    </p>
    <input type="submit" value="Login">

</form:form>

</body>
</html>
