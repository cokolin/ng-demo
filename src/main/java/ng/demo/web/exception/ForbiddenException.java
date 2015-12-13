package ng.demo.web.exception;

import java.text.MessageFormat;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * 访问驳回异常
 * 
 * @author cokolin
 * @version 1.0 2015年5月5日 上午12:55:19
 * @since 1.0
 * @see
 */
@ResponseStatus(HttpStatus.FORBIDDEN)
public class ForbiddenException extends RuntimeException {
  private static final long serialVersionUID = 1L;

  public ForbiddenException() {
    super();
  }

  public ForbiddenException(Throwable cause) {
    super(cause);
  }

  /**
   * 拼凑的异常消息
   * 
   * @param pattern
   * @param arguments
   * @see java.text.MessageFormat#format(String, Object...)
   */
  public ForbiddenException(String pattern, Object... arguments) {
    super(MessageFormat.format(pattern, arguments));
  }

  /**
   * 异常堆栈+拼凑的异常消息
   * 
   * @param cause
   * @param pattern
   * @param arguments
   * @see java.text.MessageFormat#format(String, Object...)
   */
  public ForbiddenException(Throwable cause, String pattern, Object... arguments) {
    super(MessageFormat.format(pattern, arguments), cause);
  }

}
