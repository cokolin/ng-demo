package ng.demo.vo.usual.enums;

public enum THeaderType {
	TEXT("文本"), BUTTON("按钮");

	private String chs;

	private THeaderType(String chs) {
		this.chs = chs;
	}

	public String getChs() {
		return chs;
	}
}
