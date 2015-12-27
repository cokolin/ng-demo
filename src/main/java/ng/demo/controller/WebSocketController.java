package ng.demo.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;

import ng.demo.vo.JsonResp;

/**
 * 
 * @author cokolin
 *
 */
@Controller
public class WebSocketController {
	private static Logger logger = LogManager.getLogger();

	public JsonResp<String> server(String text) throws Exception {
		logger.info(text);
		Thread.sleep(3000);
		return JsonResp.create("hello " + text);
	}
	
}
