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
		<table>
			<tbody>
				<tr>
					<td></td>
					<td><h1>账单</h1></td>
					<td><img src="/print/img/bill_qr_code.png" alt="二维码" /></td>
				</tr>
			</tbody>
		</table>
		<table>
			<tbody>
				<tr>
					<td>${data.title}</td>
					<td></td>
					<td><fmt:formatDate value="${data.date}" pattern="yyyy年MM月dd日 HH时mm分ss秒" /></td>
				</tr>
			</tbody>
		</table>
		<table>
			<thead>
				<tr>
					<%-- 共 11 列 --%>
					<th>#</th>
					<th>SKU</th>
					<th>总数量</th>
					<th>已售量</th>
					<th>成本单价</th>
					<th>销售单价</th>
					<th>销售合计</th>
					<th>销售利润</th>
					<th>剩余量</th>
					<th>结余</th>
					<th>币种</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${data.list ne null && data.list.size() > 0}">
					<c:forEach items="${data.list}" step="st" var="it">
						<tr>
							<td>${st.count}</td>
							<td>${it.sku}</td>
							<td>${it.qty}</td>
							<td>${it.sell}</td>
							<td><fmt:formatNumber value="${it.cost}" pattern=",##0.00" /></td>
							<td><fmt:formatNumber value="${it.price}" pattern=",##0.00" /></td>
							<td><fmt:formatNumber value="${it.totalAmt}" pattern=",##0.00" /></td>
							<td><fmt:formatNumber value="${it.totalFit}" pattern=",##0.00" /></td>
							<td>${it.remain}</td>
							<td><fmt:formatNumber value="${it.balance}" pattern=",##0.00" /></td>
							<td>${data.currency}</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${data.list eq null || data.list.size() eq 0}">
					<tr>
						<td colspan="11">数据不存在</td>
					</tr>
				</c:if>
			</tbody>
			<tfoot>
				<tr>
					<th colspan="2">合计结余</th>
					<th colspan="4"></th>
					<th colspan="4"><fmt:formatNumber value="${data.total}" pattern=",##0.00" /></th>
					<th>${data.currency}</th>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>