package ng.demo.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.TextMessage;

import ng.demo.vo.JsonResp;
import ng.demo.vo.MsgVo;
import ng.demo.web.Constants;
import ng.demo.web.handler.DemoWebSocketHandler;

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

	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
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

	@ResponseBody
	@RequestMapping("send-all-msg")
	public JsonResp<String> sendAllMsg(@RequestBody MsgVo vo) {
		logger.info(vo);
		try {
			demoWebSocketHandler.sendMessage(new TextMessage(vo.getSrc() + "：" + vo.getMsg()));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			return JsonResp.create(e.getMessage());
		}
		return JsonResp.create("done");
	}

	@ResponseBody
	@RequestMapping("send-user-msg")
	public JsonResp<String> sendUserMsg(@RequestBody MsgVo vo) {
		logger.info(vo);
		try {
			demoWebSocketHandler.sendUserMessage(vo.getUsr(), new TextMessage(vo.getSrc() + "：" + vo.getMsg()));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			return JsonResp.create(e.getMessage());
		}
		return JsonResp.create("done");
	}

}