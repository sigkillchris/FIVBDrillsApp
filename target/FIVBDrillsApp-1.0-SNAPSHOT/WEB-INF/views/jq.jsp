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

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src ="${url_jqlib}"><\/script>')</script>

    <script>
        window.onload = function() {
            alert('Window Loaded');
        };

        // $(document).ready(function(){
        //     $('#myContent').html('Hello World');
        //     $.ajax({
        //         url: "http://rest-service.guides.spring.io/greeting"
        //     }).then(function(data) {
        //         $('.greeting-id').append(data.id);
        //         $('.greeting-content').html(data.content);
        //     });
        //
        // });

        function createNode(element) {
            return document.createElement(element);
        }

        function append(parent, el) {
            return parent.appendChild(el);
        }

        const ul = document.getElementById('authors');
        const url = 'https://randomuser.me/api/?results=10';
        fetch(url)
            .then((resp) => resp.json())
        .then(function(data) {
            let authors = data.results;
            return authors.map(function(author) {
                let li = createNode('li'),
                    img = createNode('img'),
                    span = createNode('span');
                img.src = author.picture.medium;
                span.innerHTML = `${author.name.first} ${author.name.last}`;
                append(li, img);
                append(li, span);
                append(ul, li);
            })
        })
            .catch(function(error) {
                console.log(error);
            });
    </script>
    <title>Jquery Adventures</title>
</head>
<body>
    <div id="myContent">
        My JQ enabled page
    </div>
    <div>
        <p class="greeting-id">The ID is </p>
        <p class="greeting-content">The content is </p>
    </div>
    <h1>Authors</h1>
    <ul id="authors"></ul>

</body>
</html>
