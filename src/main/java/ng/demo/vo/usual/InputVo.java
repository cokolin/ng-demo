package ng.demo.vo.usual;

import ng.demo.vo.usual.enums.InputType;

public class InputVo extends Element {
	private static final long serialVersionUID = -5901923600206131573L;

	/** 类型 */
	private InputType type;

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



}
