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
        $(document).ready(function(){
            alert('JQuery is ready and integrated');
            // $("#id_gettime").click(function(){
            //     //alert('Button clicked...');
            //     $.ajax({
            //         url : 'get_time',
            //         success : function (data){
            //             $("#id_time").html(data);
            //         }
            //     });
            // });
        });
    </script>
    <title>Jquery Adventures</title>
</head>
<body>
    <h1>Where do you want to go?</h1>
    <p>Plan your next adventure.</p>
    <ul id="destinations">
        <li>Rome</li>
        <li>Paris</li>
        <li class="promo">Rio</li>
    </ul>

</body>
</html>
