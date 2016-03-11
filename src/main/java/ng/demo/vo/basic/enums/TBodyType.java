package ng.demo.vo.basic.enums;

public enum TBodyType implements BaseType {
	TEXT("文本"),
	RADIO("单择框"),
	CHECKBOX("复择框"),
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
