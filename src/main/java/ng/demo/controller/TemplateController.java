package ng.demo.controller;

import java.util.HashMap;
import java.util.Map;

import ng.demo.vo.usual.TemplateVo;

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

	private Map<String, TemplateVo> map = new HashMap<>();

	@RequestMapping
	public String index(Model model) {
		Map<String, String> page = new HashMap<>(map.size());
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
	@RequestMapping("pages")
	public Object pages() {
		Map<String, String> page = new HashMap<>(map.size());
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
