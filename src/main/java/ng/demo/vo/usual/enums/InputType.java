package ng.demo.vo.usual.enums;

public enum InputType implements BaseType {
	STATIC("静态数据"),

	TEXT("文本输入"),

	NUMBER("数字输入"),

	SELECT("下拉选择"),

	TEXTAREA("多行输入"),

	CHECKBOX("复选框"),
	
	CHECKALL("全选按钮"),

	RADIO("单选框"),
	
	YEAR("年份选择框"),
	
	MONTHLY("月份选择框"),

	DATE("日期选择框"),

	DATETIME("时间戳选择框"),

	TIME("时间选择框"), ;

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
