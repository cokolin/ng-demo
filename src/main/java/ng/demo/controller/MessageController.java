package ng.demo.controller;

import javax.servlet.http.HttpServletRequest;

import ng.demo.vo.JsonResp;
import ng.demo.vo.MsgVo;
import ng.demo.web.Constants;
import ng.demo.web.handler.DemoWebSocketHandler;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 
 * @author cokolin
 *
 */
@Controller
@RequestMapping("/message")
public class MessageController {
	private static Logger logger = LogManager.getLogger();

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

	@ResponseBody
	@RequestMapping("set-user")
	public JsonResp<String> setUser(@RequestBody MsgVo vo, HttpServletRequest request) {
		logger.info(vo);
		request.getSession(true).setAttribute(Constants.SESSION_USERNAME, vo.getUsr());
		return JsonResp.create("done");
	}

}
