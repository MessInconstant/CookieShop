<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>类目编辑</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
	<div class="container-fluid">

		<!-- header -->
		<jsp:include page="/admin/header.jsp" flush="true"></jsp:include>
		<!--//header  -->

		<br> <br>

		<form class="form-horizontal"
			action="${pageContext.request.contextPath }/admin/type_edit"
			method="post">
			<input type="hidden" name="id" value="${type.id }">
			<div class="form-group">
				<label for="input_name" class="col-sm-1 control-label">类目名称</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="input_name" name="name"
						value="${type.name }" required="required">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-1 col-sm-10">
					<button type="submit" class="btn btn-success">提交修改</button>
				</div>
			</div>
		</form>

		<span style="color: red;"></span>

	</div>
</body>
</html>