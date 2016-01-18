package ng.demo.kit;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.WebApplicationContext;

/**
 * Web应用工具类
 * 
 * @author cokolin
 * @version 1.0 2015年5月2日 下午5:07:36
 * @since 1.0
 * @see
 */
public class WebKit {

	private static String fullHttpUrl;

	private static WebApplicationContext webAppContext;

	private static ThreadLocal<HttpServletRequest> threadRequest = new ThreadLocal<HttpServletRequest>();

	private static ThreadLocal<HttpServletResponse> threadResponse = new ThreadLocal<HttpServletResponse>();

	public static ServletContext getServletContext() {
		return getAppContext().getServletContext();
	}

	public static WebApplicationContext setAppContext(WebApplicationContext context) {
		return webAppContext = context;
	}

	public static WebApplicationContext getAppContext() {
		return webAppContext;
	}

	public static <T> T getBean(Class<T> type) {
		return getAppContext().getBean(type);
	}

	public static HttpServletRequest getThreadRequest() {
		return threadRequest.get();
	}

	public static void setThreadRequest(HttpServletRequest value) {
		threadRequest.set(value);
	}

	public static void rmThreadRequest() {
		threadRequest.remove();
	}

	public static HttpSession getThreadSession() {
		return getThreadRequest().getSession();
	}

	public static HttpSession getThreadSession(boolean create) {
		return getThreadRequest().getSession(create);
	}

	public static HttpServletResponse getThreadResponse() {
		return threadResponse.get();
	}

	public static void setThreadResponse(HttpServletResponse value) {
		threadResponse.set(value);
	}

	public static void rmThreadResponse() {
		threadResponse.remove();
	}

	public static String getfullHttpUrl(HttpServletRequest req) {
		if (fullHttpUrl == null) {
			int port = req.getServerPort();
			if (port == 80) {
				fullHttpUrl = new StringBuilder(128).append("http://").append(req.getServerName()).append(req.getContextPath())
						.toString();
			} else {
				fullHttpUrl = new StringBuilder(128).append("http://").append(req.getServerName()).append(':').append(port)
						.append(req.getContextPath()).toString();
			}
		}
		return fullHttpUrl;
	}
}