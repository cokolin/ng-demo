package ng.demo.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;

import javax.servlet.http.HttpServletResponse;

import ng.demo.vo.DemoVo;
import ng.demo.vo.basic.TemplateVo;
import ng.demo.vo.basic.enums.BaseType;
import ng.demo.vo.basic.enums.ButtonType;
import ng.demo.vo.basic.enums.FormType;
import ng.demo.vo.basic.enums.InputType;
import ng.demo.vo.basic.enums.ModuleType;
import ng.demo.vo.basic.enums.TBodyType;
import ng.demo.vo.basic.enums.THeadType;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/template")
public class TemplateController {
	private static Logger logger = LogManager.getLogger();

	private Map<String, TemplateVo> map = new TreeMap<>();

	@RequestMapping
	public String index(Model model) {
		Map<String, String> page = new TreeMap<>();
		for (String key : map.keySet()) {
			page.put(key, map.get(key).getTitle());
		}
		model.addAttribute("page", page);
		return "template/index";
	}

	@ResponseBody
	@RequestMapping("save")
	public Object save(@RequestBody TemplateVo vo) {
		logger.info(vo);
		map.put(vo.getCode(), vo);
		return pages();
	}

	@ResponseBody
	@RequestMapping("types")
	public Object types() {
		Map<String, Map<String, String>> cfgs = new TreeMap<>();
		cfgs.put("button", getTypeMap(ButtonType.values()));
		cfgs.put("form", getTypeMap(FormType.values()));
		cfgs.put("input", getTypeMap(InputType.values()));
		cfgs.put("module", getTypeMap(ModuleType.values()));
		cfgs.put("thead", getTypeMap(THeadType.values()));
		cfgs.put("tbody", getTypeMap(TBodyType.values()));
		return cfgs;
	}

	private Map<String, String> getTypeMap(BaseType[] types) {
		Map<String, String> map = new TreeMap<>();
		for (BaseType type : types) {
			map.put(type.getKey(), type.getValue());
		}
		return map;
	}

	@ResponseBody
	@RequestMapping("pages")
	public Object pages() {
		Map<String, String> page = new TreeMap<>();
		for (String key : map.keySet()) {
			page.put(key, map.get(key).getTitle());
		}
		return page;
	}

	@RequestMapping("show/{code}")
	public String show(@PathVariable("code") String code, Model model) {
		TemplateVo tmpl = map.get(code);
		model.addAttribute("tmpl", tmpl);
		return "basic/" + tmpl.getPage();
	}

	@ResponseBody
	@RequestMapping("demo-query")
	public Object demoQuery(int start, int length) {
		if (start < 0) {
			start = 0;
		}
		if (length <= 0) {
			length = 10;
		}
		Map<String, Object> resp = new TreeMap<>();
		List<DemoVo> data = new ArrayList<>();
		int count = 1234;
		if (start < count) {
			int len = count - start;
			if (len > length) {
				len = length;
			}
			data = this.demoData(len);
		}
		resp.put("data", data);
		resp.put("count", count);
		return resp;
	}

	@RequestMapping("demo-export")
	public void demoExport(HttpServletResponse response) throws IOException {
		Map<String, Object> resp = new TreeMap<>();
		int count = 1600;
		List<DemoVo> data = this.demoData(count);
		resp.put("data", data);
		resp.put("count", count);
		response.setHeader("Content-Disposition", "attachment; filename=data.json");
		response.getWriter().write(JSON.toJSONString(resp));
	}

	private List<DemoVo> demoData(int len) {
		Random ran = new Random();
		List<DemoVo> data = new ArrayList<>();
		for (long i = 0; i < len; i++) {
			DemoVo vo = new DemoVo();
			vo.setId(i);
			vo.setName("名称" + i);
			vo.setRemark("备注" + ran.nextInt(len));
			vo.setType("type" + ran.nextInt(len));
			vo.setStatus("status" + ran.nextInt(len));
			vo.setPrice(BigDecimal.valueOf(ran.nextDouble() * len).setScale(2, RoundingMode.HALF_UP));
			vo.setQuantity(BigDecimal.valueOf(ran.nextInt(len)));
			vo.setDiscount(BigDecimal.valueOf(ran.nextDouble()).setScale(4, RoundingMode.HALF_UP));
			vo.setUpdateBy("更新人" + ran.nextInt(len));
			vo.setUpdateTime(new Date(System.currentTimeMillis() + ran.nextInt(len)));
			vo.setDeleted((byte) 0);
			data.add(vo);
		}
		return data;
	}
}
