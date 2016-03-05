package ng.demo.vo.usual.enums;

public enum InputType implements BaseType {
	STATIC("静态数据"),
	
	TEXT("文本输入"),
	
	NUMBER("数字输入"),
	
	SELECT("下拉选择"),
	
	TEXTAREA("多行输入"),
	
	CHECKBOX("复选框"),
	
	RADIO("单选框");

	private String value;

	private InputType(String value) {
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
