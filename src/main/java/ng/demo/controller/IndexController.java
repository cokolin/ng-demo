package ng.demo.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ng.demo.kit.WebKit;

/**
 * @author cokolin
 */
@Controller
@RequestMapping("/")
public class IndexController {
	private final static Logger logger = LogManager.getLogger();

	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
	public String index() {
		logger.info("index {}", WebKit.getServletContext().getContextPath());
		return "index";
	}

}
