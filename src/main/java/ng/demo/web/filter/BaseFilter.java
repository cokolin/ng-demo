package ng.demo.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.alibaba.fastjson.JSON;

import ng.demo.web.Constants;

public class BaseFilter implements Filter {
	private Logger logger = LogManager.getLogger();

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		logger.info("BaseFilter init");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.setCharacterEncoding(Constants.DEFAULT_CHARSET);
		response.setCharacterEncoding(Constants.DEFAULT_CHARSET);
		
		HttpServletRequest req = (HttpServletRequest) request;
		logger.info("{}?{}, {}, {}", req.getServletPath(), req.getQueryString(), req.getMethod(), JSON.toJSONString(req.getParameterMap()));
		try {
			chain.doFilter(request, response);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
	}

	@Override
	public void destroy() {
		logger.info("BaseFilter destroy");
	}

}
