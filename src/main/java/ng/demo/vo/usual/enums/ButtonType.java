package ng.demo.vo.usual.enums;

public enum ButtonType implements BaseType {
	SUBMIT("提交按钮"),

	BUTTON("普通按钮"),

	// RESET("重置按钮"),

	;

	private String value;

	private ButtonType(String value) {
		this.value = value;
	}
	
	public String getLowerName() {
		return this.name().toLowerCase();
	}

	@Override
	public String getValue() {
		return value;
	}

	@Override
	public String getKey() {
		return this.name();
	}

}
