package ng.demo.vo.usual.enums;

public enum FormType {
	NORMAL("基本表单", ""),
	
	IN_LINE("内联表单", "form-inline"),
	
	HORIZONTAL("水平排列表单", "form-horizontal");
	
	private String chs;
	
	private String clas;

	private FormType(String chs, String clas) {
		this.chs = chs;
		this.clas = clas;
	}

	public String getChs() {
		return chs;
	}

	public String getClas() {
		return clas;
	}

}
