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
            var service = "http://localhost:8080/api/drill";
            $.ajax({
                dataType: "json",
                type: "GET",
                url: service + "/" + ${did}
            }).then(function (data) {
                $('.did').append(data.did);
                $('.name').append(data.name);
                $('.objective').append(data.objective);
                $('.description').append(data.description);
                $('.skill_id').append(data.level_id);
                $('.drill_id').append(data.drill_id);
            });
            //TODO if no parameter is passed to JSP
        }


    </script>
    <title>FIVB All Drills Page</title>

</head>

<%--<s:url var="url_bg" value="/static/images/fivbdrillbg.jpg"/>--%>
<body background="${url_bg}" >
<table border="1" width="80%" align="center" >
    <tr></tr>

    <tr>
        <td height="25px">
            <%-- Menu --%>
            <jsp:include page="include/menu.jsp"/>
        </td>
    </tr>
    <tr>
        <td>
            <br>

                <p class="did"></p>
                <p class="name"></p>
                <p class="objective"></p>
                <p class="description"></p>
                <p class="level_id"></p>
                <p class="skill_id"></p>

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
