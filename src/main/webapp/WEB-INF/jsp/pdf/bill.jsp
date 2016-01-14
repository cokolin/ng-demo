<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="/print/css/pure.css" />
<link rel="stylesheet" href="/print/css/print.css" />
<title>账单 - ${id}</title>
</head>
<body>
	<div class="content">
		<table class="bill-table">
			<tbody>
				<tr>
					<td class="text-left" width="30%"></td>
					<td class="text-center" width="40%"><h1>账单</h1></td>
					<td class="text-right" width="30%"><img src="/print/img/bill_qr_code.png" alt="二维码" /></td>
				</tr>
			</tbody>
		</table>
		<table class="bill-table">
			<tbody>
				<tr class="text-center">
					<td width="30%">${data.title}</td>
					<td width="40%"></td>
					<td width="30%"><fmt:formatDate value="${data.date}" pattern="yyyy年MM月dd日 HH时mm分ss秒" /></td>
				</tr>
			</tbody>
		</table>
		<table class="pure-table pure-table-bordered bill-table">
			<thead>
				<tr>
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
			<tbody>
				<c:if test="${data.list ne null && data.list.size() > 0}">
					<c:forEach items="${data.list}" varStatus="st" var="it">
						<tr>
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
						<td colspan="11" class="text-left">数据不存在</td>
					</tr>
				</c:if>
			</tbody>
			<tfoot>
				<tr>
					<th colspan="2" class="text-left">合计结余</th>
					<th colspan="6" class="text-center"></th>
					<th colspan="2" class="text-right"><fmt:formatNumber value="${data.total}" pattern=",##0.00" /></th>
					<th class="text-center">${data.currency}</th>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>