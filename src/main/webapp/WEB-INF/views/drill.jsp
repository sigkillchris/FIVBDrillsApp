<%--
  Created by IntelliJ IDEA.
  User: ccarr
  Date: 10/7/2018
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <s:url var="url_jqlib" value="/static/js/jquery-3.3.1.min.js" />

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src ="${url_jqlib}"><\/script>')</script>
    <script>
        $(document).ready(function(){
            var drillId =
            (this).onload = function () {
                $.ajax({
                    url:"http://localhost:8080/api/drill/${drillId}",
                    type:"GET",
                    success:function (data) {
                        console.log("GET DATA API RESPONSE ID: " + data);
                    },
                    error:function(jqXHR, textStatus, errorThrown) {
                    }
                })
            }
        });
    </script>

    <title>Title</title>
</head>
<body>

<table border="1" width="80%" align="center" >
    <tr>
        <%--<td >--%>
            <%--@JsonProperty("drill_id") Integer drill_id,--%>
            <%--@JsonProperty("ref") String ref,--%>
            <%--@JsonProperty("name") String name,--%>
            <%--@JsonProperty("objective") String objective,--%>
            <%--@JsonProperty("description") String description,--%>
            <%--@JsonProperty("level_id") Integer level_id,--%>
            <%--@JsonProperty("skill_id") Integer skill_id)--%>
        <%--</td>--%>
    </tr>
</table>

</body>
</html>
