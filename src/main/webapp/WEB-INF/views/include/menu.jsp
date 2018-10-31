<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 10/30/2018
  Time: 9:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>

<s:url var="url_logout" value="/logout"/>

<c:if test="${sessionScope.userId==null}">
    <s:url var="url_home" value="/"/>
    <s:url var="url_alldrills" value="/viewalldrills"/>
    <s:url var="url_practice" value="/practice"/>
    <a href="${url_home}">Home</a> | <a href="${url_alldrills}">All Drills</a> | <button onclick="openInNewTab('${url_practice}');">Practice</button>
</c:if>
