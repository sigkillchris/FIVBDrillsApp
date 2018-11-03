<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 10/31/2018
  Time: 12:09 AM
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
            // alert('Window Loaded');

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
                    "<td><a href='http://localhost:8080/FIVBDrillsApp/viewdrill?drill=" + value.drill_id + "'>" + value.name + "</a></td>" +
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
    </script>
    <title>FIVB Practice Builder</title>

</head>

<s:url var="url_bg" value="/static/images/"/>
<body background="${url_bg}" >

<table border="1" width="80%" align="center" >
    <tr>
        <td height="80px">
            <%-- Header --%>
            <jsp:include page="include/header.jsp"/>
        </td>
    </tr>
    <tr>
        <td height="25px">
            <%-- Menu --%>
            <jsp:include page="include/menu.jsp"/>
        </td>
    </tr>
    <tr>
        <td>
            <table>
                <thead>
                <tr>
                    <th>drill id</th>
                    <th>name</th>
                    <th>level_id</th>
                </tr>

                </thead>
                <tbody id="drills">

                </tbody>

            </table>
        </td>
    </tr>
    <tr>
        <td height ="25px">
            <jsp:include page="include/footer.jsp" />
            <%-- Footer --%>
        </td>
    </tr>

</table>
</body>
</html>

