<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sbotnaru
  Date: 3/5/2019
  Time: 1:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Proces Form</title>

    <style>
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>

<body>

<center>


 <table id="customers">
     <tr>
         <th>First name, Last name</th>

     </tr>

    <c:if test="${not empty lists}">

        <ul>
            <c:forEach var="listValue" items="${lists}">
              <tr>
                    <td>${listValue} </td>
              </tr>
            </c:forEach>
        </ul>

    </c:if>

 </table>
  <%--  <img src="${pageContext.request.contextPath}/pages/hello.gif">--%>
<a  href="/mvc_test_no_xml_war_exploded/">Go back ->></a>

</center>
</body>
</html>
