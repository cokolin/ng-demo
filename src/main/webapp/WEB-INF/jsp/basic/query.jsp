<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/tags/tags.jsp"%><!DOCTYPE html>
<html data-ng-app='fcsApp'>
<head>
<%@include file="include/head.jsp"%>
<title>${tmpl.title}</title>
<script src="/app/basic/${tmpl.script}.js"></script>
</head>
<body>
	<div class="container-fluid" data-ng-controller="${tmpl.controller} as vm">
		<c:if test="${tmpl.modules ne null}">
			<c:forEach items="${tmpl.modules}" var="module">
				<c:if test="${module.type eq 'NORMAL'}">
					<div class="row ${module.clas}">
						<div class="col-xs-12">
							<%@include file="include/form.jsp"%>
							<%@include file="include/table.jsp"%>
						</div>
						<c:if test="${module.pagination}">
							<div class="col-xs-12">
								分页内容
							</div>
						</c:if>
					</div>
				</c:if>
				<c:if test="${module.type eq 'DIALOG'}">
					<%-- TODO --%>
				</c:if>
			</c:forEach>
		</c:if>
	</div>
</body>
</html>