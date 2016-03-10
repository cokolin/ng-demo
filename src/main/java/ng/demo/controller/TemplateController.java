package ng.demo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;

import javax.servlet.http.HttpServletResponse;

import ng.demo.vo.usual.TemplateVo;
import ng.demo.vo.usual.enums.BaseType;
import ng.demo.vo.usual.enums.ButtonType;
import ng.demo.vo.usual.enums.FormType;
import ng.demo.vo.usual.enums.InputType;
import ng.demo.vo.usual.enums.ModuleType;
import ng.demo.vo.usual.enums.TBodyType;
import ng.demo.vo.usual.enums.THeadType;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	public Object save(TemplateVo vo) {
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
		List<Map<String, Object>> data = new ArrayList<>();
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
		List<Map<String, Object>> data = this.demoData(count);
		resp.put("data", data);
		resp.put("count", count);
		response.setHeader("Content-Disposition", "attachment; filename=data.json");
		response.getWriter().write(JSON.toJSONString(resp));
	}
	
	private List<Map<String, Object>> demoData(int len){
		Random ran = new Random();
		List<Map<String, Object>> data = new ArrayList<>();
		for (int i = 0; i < len; i++) {
			Map<String, Object> map = new TreeMap<>();
			map.put("id", ran.nextLong());
			map.put("bool", ran.nextBoolean());
			map.put("amount", ran.nextInt() * ran.nextDouble());
			map.put("rate", ran.nextFloat());
			map.put("qty", ran.nextInt());
			data.add(map);
		}
		return data;
	}
}
