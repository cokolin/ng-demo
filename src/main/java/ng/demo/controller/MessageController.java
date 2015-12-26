package ng.demo.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.TextMessage;

import ng.demo.web.Constants;
import ng.demo.web.handler.DemoWebSocketHandler;

/**
 * 
 * @author cokolin
 *
 */
@Controller("/message")
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
	@RequestMapping("set-username")
	public String setUsername(String username, HttpServletRequest request) {
		logger.info(username);
		request.getSession(true).setAttribute(Constants.SESSION_USERNAME, username);
		return "done";
	}

	@ResponseBody
	@RequestMapping("send-all-msg")
	public String sendAllMsg(String message) {
		logger.info(message);
		try {
			demoWebSocketHandler.sendMessage(new TextMessage(message));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			return e.getMessage();
		}
		return "done";
	}

	@ResponseBody
	@RequestMapping("send-user-msg")
	public String sendUserMsg(String user, String message) {
		logger.info("{}, {}", user, message);
		try {
			demoWebSocketHandler.sendUserMessage(user, new TextMessage(message));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			return e.getMessage();
		}
		return "done";
	}

	@ResponseBody
	@RequestMapping("send-type-msg")
	public String sendTypeMsg(String type, String key, String message) {
		logger.info("{}, {}, {}", type, key, message);
		try {
			demoWebSocketHandler.sendMessage(type, key, new TextMessage(message));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			return e.getMessage();
		}
		return "done";
	}

}
