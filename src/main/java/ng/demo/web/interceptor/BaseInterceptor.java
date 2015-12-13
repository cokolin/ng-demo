package ng.demo.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import ng.demo.kit.WebKit;

/**
 * 
 * @author cokolin
 * @version 1.0 2015年5月5日 上午12:20:21
 * @since 1.0
 * @see
 */
public class BaseInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		WebKit.setThreadRequest(request);
		WebKit.setThreadResponse(response);
		return super.preHandle(request, response, handler);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		WebKit.rmThreadResponse();
		WebKit.rmThreadRequest();
		super.afterCompletion(request, response, handler, ex);
	}

}
