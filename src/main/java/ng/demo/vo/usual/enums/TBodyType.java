package ng.demo.vo.usual.enums;

public enum TBodyType {
	TEXT("文本"), RADIO("单选框"), CHECKBOX("复选框"), BUTTONS("按钮组");

	private String chs;

	private TBodyType(String chs) {
		this.chs = chs;
	}

	public String getChs() {
		return chs;
	}
}
