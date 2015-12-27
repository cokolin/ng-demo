package ng.demo.web.initializer;

import javax.servlet.Filter;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.HiddenHttpMethodFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import ng.demo.kit.WebKit;
import ng.demo.web.filter.BaseFilter;

/**
 * @author Cokolin
 * @version 1.0 2015年5月4日 下午10:22:14
 * @since 1.0
 * @see
 */
public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	private static Logger logger = LogManager.getLogger();

	private ServletContext servletContext;

	private void beforeInitializer() {
		logger.info("Befor initializer Spring web mvc...");
		this.addBaseFilter();
		this.addHiddenHttpMethodFilter();
	}

	private void afterInitializer() {
		logger.info("After initializer Spring web mvc...");
	}

	private void addBaseFilter() {
		Class<? extends Filter> clazz = BaseFilter.class;
		servletContext.addFilter(clazz.getSimpleName(), clazz).addMappingForUrlPatterns(null, true, "/*");
	}

	private void addHiddenHttpMethodFilter() {
		Class<? extends Filter> clazz = HiddenHttpMethodFilter.class;
		servletContext.addFilter(clazz.getSimpleName(), clazz).addMappingForUrlPatterns(null, true, "/*");
	}

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		this.servletContext = servletContext;
		this.beforeInitializer();
		super.onStartup(servletContext);
		this.afterInitializer();
	}

	@Override
	protected WebApplicationContext createServletApplicationContext() {
		WebApplicationContext webAppContext = super.createServletApplicationContext();
		((AnnotationConfigWebApplicationContext) webAppContext).setServletContext(servletContext);
		return WebKit.setAppContext(webAppContext);
	}

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class<?>[] {};// 空数组表示不设置ApplicationContext
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { WebMvcConfig.class, WebSocketConfig.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

	@Override
	protected void customizeRegistration(Dynamic registration) {
		String location = "/tmp";
		int thresholdSize = 1024 * 1024;// 1MiB
		int maxRequestSize = 10 * 1024 * 1024;// 10MiB
		MultipartConfigElement config = new MultipartConfigElement(location, maxRequestSize, maxRequestSize, thresholdSize);
		registration.setMultipartConfig(config);
	}

}
