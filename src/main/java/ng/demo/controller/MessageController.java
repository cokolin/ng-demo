package ng.demo.controller;

import ng.demo.web.handler.DemoWebSocketHandler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author cokolin
 *
 */
@Controller
@RequestMapping("/message")
public class MessageController {

	@Autowired
	private DemoWebSocketHandler demoWebSocketHandler;

	@RequestMapping(value = {"", "index"}, method = RequestMethod.GET)
	public String index() {
		return "message/msg-index";
	}

	@RequestMapping(value = "show", method = RequestMethod.GET)
	public String show() {
		return "message/msg-show";
	}

}
