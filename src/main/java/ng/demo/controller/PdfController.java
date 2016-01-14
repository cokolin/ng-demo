package ng.demo.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pdf")
public class PdfController {
	private final static Logger logger = LogManager.getLogger();

	@RequestMapping("/bill")
	public String bill(long id, Model model) {
		model.addAttribute("id", id);
		
		Random ran = new Random();

		Map<String, Object> data = new HashMap<>();
		data.put("title", "账单抬头");
		data.put("date", new Date(1450000000000L + ran.nextInt(Integer.MAX_VALUE)));
		data.put("currency", "CNY");
		double total = 0;
		List<Map<String, Object>> list = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			Map<String, Object> map = new HashMap<>();
			map.put("sku", "SKU" + i);

			int qty = ran.nextInt(100) + 1;
			int sell = ran.nextInt(qty);

			double cost = ran.nextDouble() * 1000;
			double price = cost * 1.78;

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
		logger.info(data);
		model.addAttribute("data", data);
		return "pdf/bill";
	}



}
