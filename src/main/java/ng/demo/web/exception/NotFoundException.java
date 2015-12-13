package ng.demo.web.exception;

import java.text.MessageFormat;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * 数据未找到异常
 * 
 * @author cokolin
 *
 */
@ResponseStatus(HttpStatus.NOT_FOUND)
public class NotFoundException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public NotFoundException() {
		super();
	}

	public NotFoundException(Throwable cause) {
		super(cause);
	}

	/**
	 * 拼凑的异常消息
	 * 
	 * @param pattern
	 * @param arguments
	 * @see java.text.MessageFormat#format(String, Object...)
	 */
	public NotFoundException(String pattern, Object... arguments) {
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
	public NotFoundException(Throwable cause, String pattern, Object... arguments) {
		super(MessageFormat.format(pattern, arguments), cause);
	}

}
