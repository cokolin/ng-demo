package ng.demo.vo.usual.enums;

public enum TBodyType implements BaseType {
	TEXT("文本"),
	RADIO("单选框"),
	CHECKBOX("复选框"),
	BUTTONS("按钮组");

	private String value;

	private TBodyType(String value) {
		this.value = value;
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
