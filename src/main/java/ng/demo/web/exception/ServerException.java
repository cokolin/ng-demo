package ng.demo.web.exception;

import java.text.MessageFormat;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * 服务异常
 * 
 * @author cokolin
 * @version 1.0 2015年5月2日 上午12:20:20
 * @since 1.0
 * @see
 */
@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
public class ServerException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public ServerException() {
		super();
	}

	public ServerException(Throwable cause) {
		super(cause);
	}

	/**
	 * 拼凑的异常消息
	 * 
	 * @param pattern
	 * @param arguments
	 * @see java.text.MessageFormat#format(String, Object...)
	 */
	public ServerException(String pattern, Object... arguments) {
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
	public ServerException(Throwable cause, String pattern, Object... arguments) {
		super(MessageFormat.format(pattern, arguments), cause);
	}

}
