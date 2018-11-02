<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: ccarr--%>
  <%--Date: 10/14/2018--%>
  <%--Time: 12:45 PM--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<s:url var="url_jqlib" value="/static/js/jquery-3.3.1.min.js" />--%>
    <%--<s:url var="url_css" value="/static/css/style.css"/>--%>
    <%--<link href="${url_css}" rel="stylesheet" type="text/css"/>--%>

    <%--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
    <%--<script>window.jQuery || document.write('<script src ="${url_jqlib}"><\/script>')</script>--%>

    <%--<script>--%>
        <%--window.onload = function() {--%>
            <%--// alert('Window Loaded');--%>
            <%--var service = "http://localhost:8080/FIVBDrillsApp/api/drill";--%>
            <%--$.ajax({--%>
                <%--dataType: "json",--%>
                <%--type: "GET",--%>
                <%--url: service + "/drills",--%>
                <%--success: success--%>
            <%--});--%>

        <%--}--%>

        <%--function success(e) {--%>
            <%--$.each(e, function(index, value) {--%>

                <%--$('<tr>').html(--%>
                    <%--"<td>" + value.drill_id + "</td>" +--%>
                        <%--// TODO make link to drill page--%>
                    <%--"<td><a href='http://localhost:8080/FIVBDrillsApp/api/drill/'>" + value.name + "</a></td>" +--%>
                    <%--"<td>" + value.level_id + "</td>").appendTo('#drills');--%>
            <%--});--%>
        <%--}--%>
        <%----%>
        <%--$(document).ready(function(){--%>
            <%--$("#myInput").on("keyup", function() {--%>
                <%--var value = $(this).val().toLowerCase();--%>
                <%--$("#drills tr").filter(function() {--%>
                    <%--$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)--%>
                <%--});--%>
            <%--});--%>
        <%--});--%>
    <%--</script>--%>
    <%--<title>FIVB Drills App</title>--%>

<%--</head>--%>
<%--<body>--%>
<%--<h1 id="center">FIVB Drills</h1>--%>
<%--<h3 id="center">Drills skill levels are 1-5 from beginner to advanced</h3>--%>
<%--<input id="myInput" type="text" placeholder="Search..">--%>
<%--<br><br>--%>
    <%--<div id="container">--%>
        <%--<table border="1" cellpadding="3"  width="100%">--%>
            <%--<thead>--%>
            <%--<tr>--%>
                <%--<th>drill id</th>--%>
                <%--<th>name</th>--%>
                <%--<th>level_id</th>--%>
            <%--</tr>--%>

            <%--</thead>--%>
            <%--<tbody id="drills">--%>

            <%--</tbody>--%>

        <%--</table>--%>
    <%--</div>--%>

<%--</body>--%>
<%--</html>--%>
