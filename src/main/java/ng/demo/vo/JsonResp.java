package ng.demo.vo;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

/**
 * 
 * @author cokolin
 *
 * @param <T>
 */
@JsonInclude(Include.NON_NULL)
public class JsonResp<T> implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private int status;
	
	private T data;
	
	private Long count;

	private String msg;

	public static <T> JsonResp<T> create(T data) {
		JsonResp<T> resp = new JsonResp<T>();
		resp.setData(data);
		return resp;
	}

	public static <T> JsonResp<T> create(int status, String msg) {
		JsonResp<T> resp = new JsonResp<T>();
		resp.setStatus(status);
		resp.setMsg(msg);
		return resp;
	}

	public int getStatus() {
		return status;
	}

	public JsonResp<T> setStatus(int status) {
		this.status = status;
		return this;
	}

	public T getData() {
		return data;
	}

	public JsonResp<T> setData(T data) {
		this.data = data;
		return this;
	}

	public Long getCount() {
		return count;
	}

	public JsonResp<T> setCount(Long count) {
		this.count = count;
		return this;
	}

	public String getMsg() {
		return msg;
	}

	public JsonResp<T> setMsg(String msg) {
		this.msg = msg;
		return this;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("JsonResp [status=");
		builder.append(status);
		builder.append(", data=");
		builder.append(data);
		builder.append(", msg=");
		builder.append(msg);
		builder.append("]");
		return builder.toString();
	}

}
