<%--
  Created by IntelliJ IDEA.
  User: ccarr
  Date: 10/14/2018
  Time: 12:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <s:url var="url_jqlib" value="/static/js/jquery-3.3.1.min.js" />

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src ="${url_jqlib}"><\/script>')</script>

    <script>
        window.onload = function() {
            alert('Window Loaded');
        };

        $(document).ready(function(){

            $.ajax({
                url: "localho"
            }).then(function(data) {
                $('.greeting-id').append(data.id);
                $('.greeting-content').html(data.content);
            });

        });
    </script>
    <title>Index</title>
</head>
<body>
<table>
    <tr>
        <th>
            Drill ID
        </th>
        <th>
            Drill Name
        </th>
        <th>
            Level
        </th>
    </tr>
    <tr>
        <td>
            1
        </td>
        <td>
            2
        </td>
        <td>
            3
        </td>
    </tr>
    <tr>
        <td>
            4
        </td>
        <td>
            5
        </td>
        <td>
            6
        </td>
    </tr>
</table>

</body>
</html>
