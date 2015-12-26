package ng.demo.controller;

import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/web-socket")
public class WebSocketController {
	
	@ResponseBody
	@RequestMapping
	public String index(){
		return UUID.randomUUID().toString();
	}
}
