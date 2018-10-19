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
    <s:url var="url_css" value="/static/css/style.css"/>
    <link href="${url_css}" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src ="${url_jqlib}"><\/script>')</script>

    <script>
        window.onload = function() {
            // alert('Window Loaded');

            var service = "http://localhost:8080/FIVBDrillsApp/api/drill";
            $.ajax({
                dataType: "json",
                type: "GET",
                url: service + "/drills",
                success: success
            });

        }

        function success(e)
        {
            var drill="";
            $.each(e, function (index,value)
            {

                drill += "<p>Drill Number: " + value.drill_id + "</p>";
                drill += "<h2>Drill Name: " + value.name + "</h2>";
                drill += "<p>Skill level: " + value.level_id + "</h2>";
                drill += "<div style ='border-bottom: 1px solid black;'></div>";

            });
            $('#drills').html(drill);
        }

    </script>
    <title>FIVB All Drills Page</title>

</head>
<body>
<h1 id="center">FIVB Drills</h1>
<h3 id="center">Drills skill levels are 1-5 from beginner to advanced</h3>
    <div id="containter">
        <div id="drills"></div>
    </div>





<%--<p class="test">This is Drill name: </p>--%>
<%--<table id="drill" border ="1">--%>
    <%--<tr>--%>
        <%--<th>--%>
            <%--Drill ID--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--Drill Name--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--Level--%>
        <%--</th>--%>
    <%--</tr>--%>

<%--</table>--%>

</body>
</html>
