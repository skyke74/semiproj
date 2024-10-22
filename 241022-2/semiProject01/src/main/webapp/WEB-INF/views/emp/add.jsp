<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../template/head.jspf" %>
</head>
<body>
<c:forEach items="${errs.allErrors}" var="err" varStatus="status">
<c:if test="${status.index!=0 }">
<div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>ERROR!</strong>${err.defaultMessage }<br>
</div>
</c:if>
</c:forEach>

<%@ include file="../template/menu.jspf" %>
<h2 class="page-header">숙소등록</h2>
<form action="insert.do" method="post">
	<div class="form-group">
		<input type="text" class="form-control" name="international" placeholder="국가" />
	</div>
	<div class="form-group">
		<input type="text" class="form-control" name="local" placeholder="지역" />
	</div>
	<div class="form-group">
		<div class="btn-group btn-group-justified" role="group" aria-label="...">
			<div class="btn-group" role="group">
			<input type="submit" class="btn btn-primary" value="등록" />
			</div>
			<div class="btn-group" role="group">
			<input type="reset" class="btn btn-default" value="취소" />
			</div>
		</div>
	</div>
</form>
<%@ include file="../template/footer.jspf" %>
</body>
</html>