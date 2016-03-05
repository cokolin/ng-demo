package ng.demo.vo.usual.enums;

public enum ModuleType implements BaseType {
	NORMAL("普通表单组件"), DIALOG("对话框表单组件");

	private String value;

	private ModuleType(String value) {
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
