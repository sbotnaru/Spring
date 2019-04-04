<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <style>
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 20px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            cursor: pointer;
        }


        .button1 {
            background-color: white;
            color: black;
            border: 2px solid #4CAF50;
        }

        .button1:hover {
            background-color: #4CAF50;
            color: white;
        }
    </style>


</head>
<body>


<p>
    User:<security:authentication property="principal.username"/>
    <br><br>
    User role:<security:authentication property="principal.authorities"/>
</p>
<center>
<h2>Choose what you want to do? Bro</h2>
<button class="button1" onclick="window.location.href = ' showForm';">INSERT DATA (ONLY FOR ADMIN)</button >
    <button class="button1" onclick="window.location.href = 'display';">DISPLAY DATA</button>

    <form:form action="${pageContext.request.contextPath}/logout" method="post">

        <input type="submit" value="Logout">
    </form:form>
</center>


</body>
</html>
