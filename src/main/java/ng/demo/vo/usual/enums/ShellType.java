package ng.demo.vo.usual.enums;

public enum ShellType {
	NORMAL("普通DIV"), DIALOG("对话框");

	private String chs;

	private ShellType(String chs) {
		this.chs = chs;
	}

	public String getChs() {
		return chs;
	}

}
