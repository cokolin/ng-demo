package ng.demo.vo.usual.enums;

public enum InputType {
	STATIC("静态数据"),
	
	TEXT("文本输入"),
	
	NUMBER("数字输入"),
	
	SELECT("下拉选择"),
	
	TEXTAREA("多行输入"),
	
	CHECKBOX("复选框"),
	
	RADIO("单选框");

	private String chs;

	private InputType(String chs) {
		this.chs = chs;
	}

	public String getChs() {
		return chs;
	}
}
