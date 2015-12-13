package ng.demo.web.handler;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

/**
 * 字段处理器
 * 
 * @author cokolin
 * @version 1.0 2015年5月1日 下午11:41:38
 * @since 1.0
 * @see
 */
public class DataBindingInitializer implements WebBindingInitializer {

  @Override
  public void initBinder(WebDataBinder binder, WebRequest request) {
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    binder.registerCustomEditor(String.class, new CustomerStringEditor(true));
  }

}
