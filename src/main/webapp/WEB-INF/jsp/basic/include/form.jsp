<%@ page language="java" pageEncoding="UTF-8"%><%@include file="/WEB-INF/tags/tags.jsp"%><c:if test="${module.form ne null}">
	<form class="${module.form.type.clas} ${module.form.clas}" name="${module.form.name}" data-ng-submit="${module.form.submit}">
		<fieldset data-ng-disabled="${module.form.disabled}" data-ng-init="vm.initQuery('${module.form.method}', '${module.form.url}', '${module.form.extUrl}')">
			<c:if test="${module.name ne null && !module.name.isEmpty()}">
				<legend>${module.name}</legend>
			</c:if>
			<c:if test="${module.form.cols ne null}">
				<c:forEach items="${module.form.cols}" var="col">
					<div class="${col.clas}">
						<div class="form-group">
							<c:if test="${col.label ne null}">
								<label class="control-label ${col.labClas}">${col.label}</label>
							</c:if>
							<div class="${col.iptClas}">
								<c:if test="${col.ipts ne null}">
									<c:forEach items="${col.ipts}" var="ipt">
										<c:choose>
											<c:when test="${ipt.type.key eq 'TEXT'}">
												<div class="${ipt.clas}" title="${ipt.title}">
													<input type="text" class="form-control" name="${ipt.name}" placeholder="${ipt.placeholder}" data-ng-required="${ipt.required}" data-ng-disabled="${ipt.disabled}" data-ng-model="${ipt.model}" ${ipt.attrsString}>
												</div>
											</c:when>
											<c:when test="${ipt.type.key eq 'NUMBER'}">
												<div class="${ipt.clas}" title="${ipt.title}">
													<input type="number" class="form-control" name="${ipt.name}" placeholder="${ipt.placeholder}" data-ng-required="${ipt.required}" data-ng-disabled="${ipt.disabled}" data-ng-model="${ipt.model}" ${ipt.attrsString}>
												</div>
											</c:when>
											<c:when test="${ipt.type.key eq 'YEAR'}">
												<div class="${ipt.clas}" title="${ipt.title}">
													<input type="text" class="form-control year-picker" maxlength="4" name="${ipt.name}" placeholder="${ipt.placeholder}" data-ng-required="${ipt.required}" data-ng-disabled="${ipt.disabled}" data-ng-model="${ipt.model}" ${ipt.attrsString}>
												</div>
											</c:when>
											<c:when test="${ipt.type.key eq 'MONTHLY'}">
												<div class="${ipt.clas}" title="${ipt.title}">
													<input type="text" class="form-control month-picker" maxlength="7" name="${ipt.name}" placeholder="${ipt.placeholder}" data-ng-required="${ipt.required}" data-ng-disabled="${ipt.disabled}" data-ng-model="${ipt.model}" ${ipt.attrsString}>
												</div>
											</c:when>
											<c:when test="${ipt.type.key eq 'DATE'}">
												<div class="${ipt.clas}" title="${ipt.title}">
													<input type="text" class="form-control date-picker" maxlength="10" name="${ipt.name}" placeholder="${ipt.placeholder}" data-ng-required="${ipt.required}" data-ng-disabled="${ipt.disabled}" data-ng-model="${ipt.model}" ${ipt.attrsString}>
												</div>
											</c:when>
											<c:when test="${ipt.type.key eq 'DATETIME'}">
												<div class="${ipt.clas}" title="${ipt.title}">
													<input type="text" class="form-control datetime-picker" maxlength="19" name="${ipt.name}" placeholder="${ipt.placeholder}" data-ng-required="${ipt.required}" data-ng-disabled="${ipt.disabled}" data-ng-model="${ipt.model}" ${ipt.attrsString}>
												</div>
											</c:when>
											<c:when test="${ipt.type.key eq 'TIME'}">
												<div class="${ipt.clas}" title="${ipt.title}">
													<input type="text" class="form-control time-picker" maxlength="8" name="${ipt.name}" placeholder="${ipt.placeholder}" data-ng-required="${ipt.required}" data-ng-disabled="${ipt.disabled}" data-ng-model="${ipt.model}" ${ipt.attrsString}>
												</div>
											</c:when>
											<c:when test="${ipt.type.key eq 'SELECT'}">
												<div class="${ipt.clas}" title="${ipt.title}">
													<select class="form-control" name="${ipt.name}" data-ng-required="${ipt.required}" data-ng-model="${ipt.model}" data-ng-disabled="${ipt.disabled}" data-ng-options="${ipt.reserve}" ${ipt.attrsString}>
														<c:if test="${ipt.placeholder ne null && !ipt.placeholder.isEmpty()}">
															<option value="">${ipt.placeholder}</option>
														</c:if>
													</select>
												</div>
											</c:when>
											<c:when test="${ipt.type.key eq 'TEXTAREA'}">
												<div class="${ipt.clas}" title="${ipt.title}">
													<textarea class="form-control" name="${ipt.name}" placeholder="${ipt.placeholder}" data-ng-required="${ipt.required}" data-ng-disabled="${ipt.disabled}" data-ng-model="${ipt.model}" rows="${ipt.reserve}" ${ipt.attrsString}></textarea>
												</div>
											</c:when>
											<c:when test="${ipt.type.key eq 'CHECKBOX'}">
												<label data-ng-repeat="${ipt.reserve}" class="${ipt.clas}" title="${ipt.title}"><input type="checkbox" name="${ipt.name}" data-ng-required="${ipt.required}" data-ng-model="${ipt.model}" data-ng-disabled="${ipt.disabled}" data-ng-change="${ipt.reserve}" ${ipt.attrsString}> ${ipt.placeholder}</label>
											</c:when>
											<c:when test="${ipt.type.key eq 'CHECKALL'}">
												<label class="${ipt.clas}" title="${ipt.title}">
													<button type="button" class="btn btn-xs btn-warning" name="${ipt.name}" data-ng-disabled="${ipt.disabled}" data-ng-click="${ipt.reserve}" ${ipt.attrsString}>${ipt.placeholder}</button>
												</label>
											</c:when>
											<c:when test="${ipt.type.key eq 'RADIO'}">
												<label class="${ipt.clas}" title="${ipt.title}"><input type="radio" name="${ipt.name}" data-ng-required="${ipt.required}" data-ng-model="${ipt.model}" data-ng-disabled="${ipt.disabled}" data-ng-change="${ipt.reserve}" value="${ipt.value}" ${ipt.attrsString}> ${ipt.placeholder}</label>
											</c:when>
											<c:when test="${ipt.type.key eq 'RADIOALL'}">
												<label class="${ipt.clas}" title="${ipt.title}"><input type="radio" name="${ipt.name}" data-ng-required="${ipt.required}" data-ng-model="${ipt.model}" data-ng-disabled="${ipt.disabled}" data-ng-change="${ipt.reserve}" ${ipt.attrsString}> ${ipt.placeholder}</label>
											</c:when>
											<c:otherwise>
												<div class="${ipt.clas}">
													<p title="${ipt.name}" class="form-control-static">${ipt.placeholder}</p>
												</div>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<div class="${module.form.btnColClas}">
				<ul class="list-inline">
					<c:if test="${module.form.btns ne null}">
						<c:forEach items="${module.form.btns}" var="btn">
							<li>
								<button type="${btn.type.lowerName}" class="btn ${btn.clas}" data-ng-disabled="${btn.disabled}" data-ng-click="${btn.click}" ${btn.attrsString}>
									<c:if test="${btn.icon ne null}">
										<span class="${btn.icon}"></span>
									</c:if>
									${btn.name}
								</button>
							</li>
						</c:forEach>
					</c:if>
				</ul>
			</div>
		</fieldset>
	</form>
</c:if>