<%--
  Created by IntelliJ IDEA.
  User: ccarr
  Date: 10/7/2018
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--Spring ags import --%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
    <s:url var="url_jqlib" value="/static/js/jquery-3.3.1.min.js" />
    <s:url var="url_css" value="/static/css/style.css"/>
    <link href="${url_css}" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src ="${url_jqlib}"><\/script>')</script>

    <script>
        window.onload = function() {
        //    alert('Window Loaded');

            var service = "http://localhost:8080/FIVBDrillsApp/api/drill";
            $.ajax({
                dataType: "json",
                type: "GET",
                url: service + "/drills",
                success: success
            });

        }

        function success(e) {
            $.each(e, function(index, value) {

                $('<tr>').html(
                    "<td>" + value.drill_id + "</td>" +
                    // TODO make link to drill page
                    "<td><a href='http://localhost:8080/FIVBDrillsApp/api/drill/'>" + value.name + "</a></td>" +
                    "<td>" + value.level_id + "</td>").appendTo('#drills');
            });
        }

        $(document).ready(function(){
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#drills tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });

        function openInNewTab(url) {
            var win = window.open(url, '_blank');
            win.focus();
        }
    </script>
    <title>FIVB All Drills Page</title>

</head>

<s:url var="url_bg" value="/static/images/"/>
<body background="${url_bg}" >

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
<p>test</p>
</body>
</html>
