package ng.demo.vo;

import java.io.Serializable;

public class MsgVo implements Serializable {
	private static final long serialVersionUID = 1L;

	private String usr;

	private String msg;

	public String getUsr() {
		return usr;
	}

	public void setUsr(String usr) {
		this.usr = usr;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MsgVo [usr=");
		builder.append(usr);
		builder.append(", msg=");
		builder.append(msg);
		builder.append("]");
		return builder.toString();
	}

}
