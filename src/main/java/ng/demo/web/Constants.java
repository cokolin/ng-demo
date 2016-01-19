package ng.demo.web;

import java.nio.charset.Charset;

/**
 * 常量类
 * 
 * @author Cokolin
 * @version 1.0 2015年5月2日 上午1:10:12
 * @since 1.0
 * @see
 */
public final class Constants {
	
	public final static String PACKAGE_SCAN = "ng.demo";

	/** 默认编码 */
	public final static String DEFAULT_CHARSET = "UTF-8";
	
	public final static Charset UTF_8 = Charset.forName(DEFAULT_CHARSET);

	/** 消息的缓存大小 */
	public final static int MESSAGE_BUFFER_SIZE = 8 * 1024;

	/** WebSocket 中的用户名 */
	public final static String WEBSOCKET_USERNAME = "USERNAME";

	/** Session 中的用户名 */
	public final static String SESSION_USERNAME = "USERNAME";
	
}
