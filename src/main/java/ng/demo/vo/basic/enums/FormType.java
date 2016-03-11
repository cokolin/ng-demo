package ng.demo.vo.basic.enums;

public enum FormType implements BaseType {
	NORMAL("基本表单", ""),
	
	IN_LINE("内联表单", "form-inline"),
	
	HORIZONTAL("水平排列表单", "form-horizontal");
	
	private String value;
	
	private String clas;

	private FormType(String value, String clas) {
		this.value = value;
		this.clas = clas;
	}

	@Override
	public String getValue() {
		return value;
	}

	public String getClas() {
		return clas;
	}

	@Override
	public String getKey() {
		return this.name();
	}

}
