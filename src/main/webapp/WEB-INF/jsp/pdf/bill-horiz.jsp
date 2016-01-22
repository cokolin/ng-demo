<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@taglib prefix="fmt"
	uri="http://java.sun.com/jsp/jstl/fmt"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="/css/bill-print.css" rel="stylesheet" type="text/css" />
<style type="text/css">
@page {
	size: A4 landscape;
	margin: 1cm;
}

.content {
	width: 100%;
}

@media screen {
	.content {
		width: 277mm;
	}
}
</style>
<title>账单 - ${id}</title>
</head>
<body>
	<div class="content">
		<table class="wrap-table">
			<tbody>
				<tr class="bill-head">
					<td class="text-left" width="20%"><img class="bill-img" src="/css/img/bill_qr_code.png" alt="静态二维码" /></td>
					<td class="text-center" width="60%"><h2>主标题</h2>
						<h3>副标题</h3></td>
					<td class="text-right" width="20%"><img class="bill-img" src="/pdf/image?id=${id}" alt="动态二维码" /></td>
				</tr>
			</tbody>
		</table>
		<table class="wrap-table">
			<tbody>
				<tr class="bill-title">
					<th class="text-center" width="20%">${data.code}</th>
					<th class="text-left" width="50%">${data.company}</th>
					<td class="text-right" width="30%"><fmt:formatDate value="${data.date}" pattern="yyyy年MM月dd日 HH时mm分" /></td>
				</tr>
			</tbody>
		</table>
		<table class="bill-table bill-table-border">
			<thead>
				<tr class="bg-active">
					<%-- 共 11 列 --%>
					<th class="text-center">#</th>
					<th class="text-left">SKU</th>
					<th class="text-center">总数量</th>
					<th class="text-center">已售量</th>
					<th class="text-right">成本单价</th>
					<th class="text-right">销售单价</th>
					<th class="text-right">销售合计</th>
					<th class="text-right">销售利润</th>
					<th class="text-center">剩余量</th>
					<th class="text-right">结余</th>
					<th class="text-center">币种</th>
				</tr>
			</thead>
			<tbody class="bill-table-sm">
				<c:if test="${data.list ne null && data.list.size() > 0}">
					<c:forEach items="${data.list}" varStatus="st" var="it">
						<tr <c:if test="${st.index % 2 eq 1}"> class="bg-active"</c:if>>
							<td class="text-center">${st.count}</td>
							<td class="text-left">${it.sku}</td>
							<td class="text-center">${it.qty}</td>
							<td class="text-center">${it.sell}</td>
							<td class="text-right"><fmt:formatNumber value="${it.cost}" pattern=",##0.00" /></td>
							<td class="text-right"><fmt:formatNumber value="${it.price}" pattern=",##0.00" /></td>
							<td class="text-right"><fmt:formatNumber value="${it.totalAmt}" pattern=",##0.00" /></td>
							<td class="text-right"><fmt:formatNumber value="${it.totalFit}" pattern=",##0.00" /></td>
							<td class="text-center">${it.remain}</td>
							<td class="text-right"><fmt:formatNumber value="${it.balance}" pattern=",##0.00" /></td>
							<td class="text-center">${data.currency}</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${data.list eq null || data.list.size() eq 0}">
					<tr>
						<td class="text-left" colspan="11">数据不存在</td>
					</tr>
				</c:if>
			</tbody>
			<tfoot>
				<tr <c:if test="${data.list ne null && data.list.size() % 2 eq 1}"> class="bg-active"</c:if>>
					<th class="text-center" colspan="2">合计结余</th>
					<th class="text-center" colspan="6">备注内容</th>
					<th class="text-right" colspan="2"><fmt:formatNumber value="${data.total}" pattern=",##0.00" /></th>
					<th class="text-center">${data.currency}</th>
				</tr>
			</tfoot>
		</table>
		<p>账单备注内容显示在此处</p>
	</div>
</body>
</html>