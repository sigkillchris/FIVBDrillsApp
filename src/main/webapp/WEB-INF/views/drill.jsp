<%--
  Created by IntelliJ IDEA.
  User: ccarr
  Date: 10/7/2018
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="jquery-3.3.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $.ajax({
                url: "http://localhost:8080/api/drill/"
            }).then(function(data) {
                $('.greeting-id').append(data.id);
                $('.greeting-content').append(data.content);
            });
        });
    </script>
</head>
<body>

<table border="1" width="80%" align="center" >
    <tr>
        <td height="80px">
            <%-- Header --%>
            test
        </td>
    </tr>
</table>

</body>
</html>
