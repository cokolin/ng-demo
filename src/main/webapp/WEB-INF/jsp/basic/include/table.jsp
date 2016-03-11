<%@ page language="java" pageEncoding="UTF-8"%><%@include file="/WEB-INF/tags/tags.jsp"%><c:if test="${module.table ne null}">
	<div class="table-responsive">
		<table id="${module.table.name}" class="table ${module.table.clas}">
			<c:if test="${module.table.theads ne null}">
				<thead>
					<tr>
						<c:forEach items="${module.table.theads}" var="thead">
							<c:choose>
								<c:when test="${thead.type.key eq 'BUTTON'}">
									<th class="${thead.clas}" title="${thead.name}">
										<button class="btn btn-xs ${thead.btn.clas}" type="button" data-ng-disabled="${thead.btn.disabled}" data-ng-click="${thead.btn.click}" ${thead.btn.attrsString}>
											<c:if test="${thead.btn.icon ne null}">
												<span class="${thead.btn.icon}"></span>
											</c:if>${thead.btn.name}</button>
									</th>
								</c:when>
								<c:otherwise>
									<th class="${thead.clas}">${thead.name}</th>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</tr>
				</thead>
			</c:if>
			<c:if test="${module.table.tbodies ne null}">
				<tbody>
					<tr data-ng-repeat="${module.table.repeat}">
						<c:forEach items="${module.table.tbodies}" var="tbody">
							<c:choose>
								<c:when test="${tbody.type.key eq 'RADIO'}">
									<td class="${tbody.clas}" title="${tbody.name}"><input type="radio" name="${tbody.ipt.name}" data-ng-required="${tbody.ipt.required}" data-ng-model="${tbody.ipt.model}" data-ng-disabled="${tbody.ipt.disabled}" data-ng-change="${tbody.ipt.reserve}" value="${tbody.ipt.value}" ${tbody.ipt.attrsString}></td>
								</c:when>
								<c:when test="${tbody.type.key eq 'BUTTONS'}">
									<td class="${tbody.clas}" title="${tbody.name}"><c:forEach items="${tbody.btns}" var="btn">
											<button class="btn btn-xs ${btn.clas}" type="button" data-ng-disabled="${btn.disabled}" data-ng-click="${btn.click}" ${btn.attrsString}>
												<c:if test="${btn.icon ne null}">
													<span class="${btn.icon}"></span>
												</c:if>${btn.name}</button>
										</c:forEach></td>
								</c:when>
								<c:otherwise>
									<td class="${tbody.clas}">${tbody.name}</td>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</tr>
				</tbody>
			</c:if>
		</table>
	</div>
</c:if>