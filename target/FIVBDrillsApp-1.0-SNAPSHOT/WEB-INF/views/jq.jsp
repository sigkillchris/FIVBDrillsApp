<%--
  Created by IntelliJ IDEA.
  User: ccarr
  Date: 10/8/2018
  Time: 9:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <s:url var="url_jqlib" value="/static/js/jquery-3.3.1.min.js" />
    <script src="${url_jqlib}"></script>
    <script>
        window.onload = function() {
            alert('Window Loaded');
        };

        $(document).ready(function(){
            $('#myContent').html('Hello World');
        });
    </script>
    <title>Jquery Adventures</title>
</head>
<body>
    <div id="myContent">
        My JQ enabled page
    </div>

</body>
</html>
