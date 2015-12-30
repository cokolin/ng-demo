package ng.demo.web.handler;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

import ng.demo.vo.MsgVo;
import ng.demo.web.Constants;

import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.alibaba.fastjson.JSON;

/**
 * 
 * @author cokolin
 *
 */
public class DemoWebSocketHandler extends TextWebSocketHandler {
	private static Logger logger = LogManager.getLogger();

	private List<WebSocketSession> sessions = new CopyOnWriteArrayList<>();

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		String text = message.getPayload();
		if (StringUtils.isBlank(text)) {
			logger.info("empty message : {}", session);
			return;
		}
		MsgVo vo = JSON.parseObject(text, MsgVo.class);
		String user = vo.getUsr();
		Object username = session.getAttributes().get(Constants.WEBSOCKET_USERNAME);
		TextMessage msg = new TextMessage(username + ":" + vo.getMsg());
		if (StringUtils.isBlank(user)) {
			this.sendUserMessage(user, msg);
		}
		this.sendAllMessage(msg);
	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		logger.info(session);
		sessions.add(session);
	}

	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		if (session.isOpen()) {
			session.close();
			logger.info("websocket error closed : {}", session);
		}
		this.afterConnectionClosed(session, CloseStatus.SERVER_ERROR);
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		logger.info("websocket remove : {}", session);
		sessions.remove(session);
	}

	public void sendMessage(String type, String key, TextMessage message) throws IOException {
		for (WebSocketSession session : sessions) {
			if (session.isOpen() && session.getAttributes().get(type).equals(key)) {
				session.sendMessage(message);
			}
		}
	}

	public void sendUserMessage(String user, TextMessage message) throws IOException {
		this.sendMessage(Constants.WEBSOCKET_USERNAME, user, message);
	}

	public void sendAllMessage(TextMessage message) throws IOException {
		for (WebSocketSession session : sessions) {
			if (session.isOpen()) {
				session.sendMessage(message);
			}
		}
	}

}
