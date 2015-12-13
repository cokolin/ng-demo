package ng.demo.web.handler;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.web.util.HtmlUtils;

/**
 * 字符串处理类
 * 
 * @author cokolin
 * @version 1.0 2015年5月2日 下午2:08:07
 * @since 1.0
 * @see
 */
public class CustomerStringEditor extends StringTrimmerEditor {

  public CustomerStringEditor(boolean emptyAsNull) {
    super(emptyAsNull);
  }

  public CustomerStringEditor(String charsToDelete, boolean emptyAsNull) {
    super(charsToDelete, emptyAsNull);
  }

  @Override
  public void setAsText(String text) {
    String value = text;
    if (text != null) {
      value = HtmlUtils.htmlEscape(text);
    }
    super.setAsText(value);
  }

}
