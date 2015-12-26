package ng.demo.ws;

import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.TextMessage;

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

	@RequestMapping
	public String index() {
		return "message/msg-index";
	}

	@RequestMapping("show")
	public String show() {
		return "message/msg-show";
	}

	@ResponseBody
	@RequestMapping("all")
	public String all(String message) {
		try {
			demoWebSocketHandler.sendMessage(new TextMessage(message));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			return e.getMessage();
		}
		return "done";
	}

	@ResponseBody
	@RequestMapping("user")
	public String user(String user, String message) {
		try {
			demoWebSocketHandler.sendUserMessage(user, new TextMessage(message));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			return e.getMessage();
		}
		return "done";
	}

	@ResponseBody
	@RequestMapping("type")
	public String session(String type, String key, String message) {
		try {
			demoWebSocketHandler.sendMessage(type, key, new TextMessage(message));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			return e.getMessage();
		}
		return "done";
	}

}
