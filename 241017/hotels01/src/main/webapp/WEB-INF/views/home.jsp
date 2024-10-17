<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set value="${pageContext.request.contextPath }" var="root"/>
	<ul>
		<li><a href="${root }/">home</a></li>
		<li><a href="${root }/intro">intro</a></li>
		<li><a href="${root }/emp/">emp</a></li>
		<li><a href="${root }/dept/">dept</a></li>
	</ul>
</body>
</html>
