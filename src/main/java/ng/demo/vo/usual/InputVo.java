package ng.demo.vo.usual;

import ng.demo.vo.usual.enums.InputType;

public class InputVo extends Element {
	private static final long serialVersionUID = -4381437395133116916L;

	/** 类型 */
	private InputType type;

	/**
	 * 对于静态项，placeholder 就是项目值； 对于单、多选框，placeholder 就是注释； 对于下拉列表，placeholder 就是默认选项的说明；
	 */
	private String placeholder;

	/** 必填条件 */
	private String required;
	
	/** 禁用条件 */
	private String disabled;

	/** 关联模型 */
	private String model;
	
	/** 默认值 */
	private String value;
	
	/** 提示标题 */
	private String title;
	
	/** 备用内容 */
	private String reserve;

	public InputVo() {
		super();
	}

	public InputVo(InputType type, String name, String clas) {
		super(name, clas);
		this.type = type;
	}

	public InputType getType() {
		return type;
	}

	public void setType(InputType type) {
		this.type = type;
	}

	public String getPlaceholder() {
		return placeholder;
	}

	public void setPlaceholder(String placeholder) {
		this.placeholder = placeholder;
	}

	public String getRequired() {
		return required;
	}

	public void setRequired(String required) {
		this.required = required;
	}

	public String getDisabled() {
		return disabled;
	}

	public void setDisabled(String disabled) {
		this.disabled = disabled;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getReserve() {
		return reserve;
	}

	public void setReserve(String reserve) {
		this.reserve = reserve;
	}

}
