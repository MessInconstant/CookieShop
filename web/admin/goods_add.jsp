<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>商品添加</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
	<div class="container-fluid">

		<!-- header -->
		<jsp:include page="/admin/header.jsp" flush="true"></jsp:include>
		<!--//header  -->

		<br>
		<c:if test="${!empty failMsg }">
			<div class="alert alert-danger">${failMsg }</div>
		</c:if>
		<br>
		<form class="form-horizontal" action="${pageContext.request.contextPath }/admin/good_add" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="input_name" class="col-sm-1 control-label">名称</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="input_name" name="name" required="required">
				</div>
			</div>
			<div class="form-group">
				<label for="input_name" class="col-sm-1 control-label">价格</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="input_name" name="price">
				</div>
			</div>
			<div class="form-group">
				<label for="input_name" class="col-sm-1 control-label">介绍</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="input_name" name="intro">
				</div>
			</div>
			<div class="form-group">
				<label for="input_name" class="col-sm-1 control-label">库存</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="input_name" name="stock">
				</div>
			</div>
			<div class="form-group">
				<label for="input_file" class="col-sm-1 control-label">封面图片</label>
				<div class="col-sm-6">
					<input type="file" name="cover" id="input_file" required="required">推荐尺寸: 500 * 500
				</div>
			</div>
			<div class="form-group">
				<label for="input_file" class="col-sm-1 control-label">详情图片1</label>
				<div class="col-sm-6">
					<input type="file" name="image1" id="input_file" required="required">推荐尺寸: 500 * 500
				</div>
			</div>
			<div class="form-group">
				<label for="input_file" class="col-sm-1 control-label">详情图片2</label>
				<div class="col-sm-6">
					<input type="file" name="image2" id="input_file" required="required">推荐尺寸: 500 * 500
				</div>
			</div>
			<div class="form-group">
				<label for="select_topic" class="col-sm-1 control-label">类目</label>
				<div class="col-sm-6">
					<select class="form-control" id="select_topic" name="good.type.id">
						<c:forEach items="${typeList }" var="t">
							<option value="${t.id }">${t.name }</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-1 col-sm-10">
					<button type="submit" class="btn btn-success">提交保存</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>