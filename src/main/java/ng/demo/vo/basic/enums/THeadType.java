package ng.demo.vo.basic.enums;

public enum THeadType implements BaseType {
	TEXT("文本"), BUTTON("按钮");

	private String value;

	private THeadType(String value) {
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
