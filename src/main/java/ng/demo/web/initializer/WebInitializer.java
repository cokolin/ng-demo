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
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.filter.HiddenHttpMethodFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import ng.demo.kit.WebKit;
import ng.demo.web.Constants;

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
		this.addHiddenHttpMethodFilter();
		this.addCharacterEncodingFilter();
	}

	private void afterInitializer() {
		logger.info("After initializer Spring web mvc...");
	}

	private void addHiddenHttpMethodFilter() {
		Class<? extends Filter> clazz = HiddenHttpMethodFilter.class;
		servletContext.addFilter(clazz.getSimpleName(), clazz).addMappingForUrlPatterns(null, true, "/*");
	}

	private void addCharacterEncodingFilter() {
		CharacterEncodingFilter filter = new CharacterEncodingFilter();
		filter.setEncoding(Constants.DEFAULT_CHARSET);
		filter.setForceEncoding(true);
		servletContext.addFilter(filter.getClass().getSimpleName(), filter).addMappingForUrlPatterns(null, true, "/*");
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
		return null;// null表示不设置ApplicationContext
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { WebMvcConfig.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

	@Override
	protected void customizeRegistration(Dynamic registration) {
		String location = "/tmp";
		int maxRequestSize = 10 * 1024 * 1024;// 10MiB
		int thresholdSize = 1024 * 1024;// 1MiB
		MultipartConfigElement config = new MultipartConfigElement(location, maxRequestSize, maxRequestSize, thresholdSize);
		registration.setMultipartConfig(config);
	}

}
