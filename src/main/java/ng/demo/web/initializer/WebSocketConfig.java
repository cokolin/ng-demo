package ng.demo.web.initializer;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;
import org.springframework.web.socket.server.standard.ServletServerContainerFactoryBean;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

import ng.demo.web.Constants;
import ng.demo.web.handler.DemoWebSocketHandler;

@Configuration
@EnableWebSocket
@ComponentScan(Constants.PACKAGE_SCAN)
public class WebSocketConfig implements WebSocketConfigurer {

	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		registry.addHandler(demoWebSocketHandler(), "/ws/demo").addInterceptors(new HttpSessionHandshakeInterceptor());
	}

	@Bean
	public DemoWebSocketHandler demoWebSocketHandler() {
		return new DemoWebSocketHandler();
	}

	@Bean
	public ServletServerContainerFactoryBean createWebSocketContainer() {
		ServletServerContainerFactoryBean container = new ServletServerContainerFactoryBean();
		container.setMaxTextMessageBufferSize(Constants.MESSAGE_BUFFER_SIZE);
		container.setMaxBinaryMessageBufferSize(Constants.MESSAGE_BUFFER_SIZE);
		return container;
	}

}