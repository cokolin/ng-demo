package ng.demo.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ng.demo.kit.PdfKit;
import ng.demo.kit.WebKit;
import ng.demo.vo.JsonResp;

@Controller
@RequestMapping("/pdf")
public class PdfController {
	private static Logger logger = LogManager.getLogger();

	@RequestMapping("/create")
	public void create(long id, Integer download, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		logger.info("bill id {}", id);
		String url;
		if (id % 2 == 1) {
			url = "/pdf/bill.do?id=" + id;
		} else {
			url = "/pdf/bill-horiz.do?id=" + id;
		}
		resp.setContentType("application/pdf");
		String src = PdfKit.getHtmlToString(url, req, resp);
		if (download != null && download > 0) {
			resp.setHeader("Content-Disposition", "attachment;filename=bill-" + id + ".pdf");
		}
		try (ServletOutputStream out = resp.getOutputStream()) {
			String basePath = WebKit.getfullHttpUrl(req);
			PdfKit.buildPdf(src, out, basePath, PdfKit.getDefaultEncryption());
			resp.flushBuffer();
		}
	}

	@ResponseBody
	@RequestMapping("/create-file")
	public String createHoriz(int num, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		logger.info("file number {}", num);
		long time = System.nanoTime();
		if (num < 1) {
			num = 1;
		}
		if (num > 1000) {
			num = 1000;
		}
		for (int i = 100, count = num + i; i < count; i++) {
			String url;
			if (i % 2 == 1) {
				url = "/pdf/bill.do?id=" + i;
			} else {
				url = "/pdf/bill-horiz.do?id=" + i;
			}
			String src = PdfKit.getHtmlToString(url, req, resp);
			File file = new File("/apps/logs/temp/bill-" + i + ".pdf");
			try (OutputStream out = new FileOutputStream(file)) {
				String basePath = WebKit.getfullHttpUrl(req);
				PdfKit.buildPdf(src, out, basePath);
			}
		}
		return JsonResp.builder((System.nanoTime() - time)/ num /  1_000_000).toString();
	}

	@RequestMapping("/bill")
	public String bill(long id, HttpServletRequest req) {
		logger.info("{}", req.getRequestURL());
		req.setAttribute("basePath", WebKit.getfullHttpUrl(req));
		req.setAttribute("id", id);

		Map<String, Object> data = data(id);
		req.setAttribute("data", data);
		logger.info(data);

		return "pdf/bill";
	}

	@RequestMapping("/bill-horiz")
	public String billHoriz(long id, HttpServletRequest req) {
		logger.info("{}", req.getRequestURL());
		req.setAttribute("basePath", WebKit.getfullHttpUrl(req));
		req.setAttribute("id", id);

		Map<String, Object> data = data(id);
		req.setAttribute("data", data);
		logger.info(data);

		return "pdf/bill-horiz";
	}

	private Map<String, Object> data(long id) {
		Random ran = new Random();
		Map<String, Object> data = new HashMap<>();
		int code = ran.nextInt(900000) + 100000;
		data.put("code", code);
		data.put("company", "第 " + code + " 工业商业农业有限公司");
		data.put("date", new Date(1450000000000L + ran.nextInt(Integer.MAX_VALUE)));
		data.put("currency", "CNY");
		double total = 0;
		List<Map<String, Object>> list = new ArrayList<>();
		for (int i = 0, size = 15; i < size; i++) {
			Map<String, Object> map = new HashMap<>();
			map.put("sku", "SKU-" + i);

			int qty = ran.nextInt(100) + 1;
			int sell = ran.nextInt(qty);

			double cost = ran.nextDouble() * 1000;
			double price = cost * 2;

			double totalAmt = price * sell;
			double totalFit = (price - cost) * sell;

			int remain = qty - sell;
			double balance = (price * sell) - (cost * qty);
			total += balance;
			map.put("qty", qty);
			map.put("sell", sell);
			map.put("cost", cost);
			map.put("price", price);
			map.put("totalAmt", totalAmt);
			map.put("totalFit", totalFit);
			map.put("remain", remain);
			map.put("balance", balance);

			list.add(map);
		}
		data.put("list", list);
		data.put("total", total);
		return data;
	}

	@RequestMapping("/image")
	public void image(long id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getRequestDispatcher("/css/img/bill_qr_code.png?id=" + id).forward(request, response);
	}

}
