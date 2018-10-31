<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 10/29/2018
  Time: 2:34 PM
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FIVB Drills Home</title>

    <%-- You should never use href directly
    <link href="static/css/style.css" rel="stylesheet" type="text/css"/>
    --%>
    <s:url var="url_css" value="/static/css/style.css"/>
    <link href="${url_css}" rel="stylesheet" type="text/css"/>
    <script>
        function openInNewTab(url) {
            var win = window.open(url, '_blank');
            win.focus();
        }
    </script>
</head>

<s:url var="url_bg" value="/static/images/fivbdrillbg.jpg"/>
<body background="${url_bg}" >
<table border="1" width="80%" align="center" >
    <tr>
        <td height="80px" bgcolor="#fffacd">
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
        <td bgcolor="#fffacd">body</td>
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
