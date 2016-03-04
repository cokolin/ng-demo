package ng.demo.vo.usual.enums;

public enum ButtonType {
	SUBMIT("提交按钮"),
	
	BUTTON("普通按钮"),
	
	RESET("重置按钮");
	
	private String chs;
	
	private ButtonType(String chs){
		this.chs = chs;
	}

	public String getChs() {
		return chs;
	}
}
