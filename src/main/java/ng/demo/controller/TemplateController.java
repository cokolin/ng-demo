package ng.demo.controller;

import java.util.TreeMap;
import java.util.Map;

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
	@RequestMapping("create")
	public Object create(TemplateVo vo) {
		logger.info(vo);
		if (map.containsKey(vo.getCode())) {
			return null;
		} else {
			map.put(vo.getCode(), vo);
			return pages();
		}
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
		return "template/" + tmpl.getPage();
	}
}
