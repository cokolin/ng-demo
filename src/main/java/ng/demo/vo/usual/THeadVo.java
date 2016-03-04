package ng.demo.vo.usual;

import ng.demo.vo.usual.enums.THeaderType;

public class THeadVo extends Element {
	private static final long serialVersionUID = -3171539941509331999L;

	/** 类型 */
	private THeaderType type;

	/** 按钮 */
	private ButtonVo btn;

	public THeadVo() {
		super();
	}

	public THeadVo(THeaderType type, String name, String clas) {
		super(name, clas);
		this.type = type;
	}

	public THeaderType getType() {
		return type;
	}

	public void setType(THeaderType type) {
		this.type = type;
	}

	public ButtonVo getBtn() {
		return btn;
	}

	public void setBtn(ButtonVo btn) {
		this.btn = btn;
	}

}
